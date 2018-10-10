/*-
 * Copyright (c) 2018 Intel Corporation
 * All rights reserved.
 *
 * Redistribution and use in source and binary forms, with or without
 * modification, are permitted provided that the following conditions
 * are met:
 * 1. Redistributions of source code must retain the above copyright
 *    notice, this list of conditions and the following disclaimer.
 * 2. Redistributions in binary form must reproduce the above copyright
 *    notice, this list of conditions and the following disclaimer in the
 *    documentation and/or other materials provided with the distribution.
 *
 * THIS SOFTWARE IS PROVIDED BY NETAPP, INC ``AS IS'' AND
 * ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
 * IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
 * ARE DISCLAIMED.  IN NO EVENT SHALL NETAPP, INC OR CONTRIBUTORS BE LIABLE
 * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL
 * DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
 * OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION)
 * HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
 * LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY
 * OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGE.
 *
 */

#include <string.h>
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <stdbool.h>
#include <elf.h>

#include "types.h"
#include "dm.h"
#include "vmmapi.h"
#include "sw_load.h"
#include "acpi.h"

#define	ELF_BUF_LEN			(1024UL*8UL)
#define	MULTIBOOT_HEAD_MAGIC		(0x1BADB002)
#define	MULTIBOOT_MACHINE_STATE_MAGIC	(0x2BADB002)
#define	GDT_LOAD_OFF(ctx)		(ctx->lowmem - 4*MB - 2* KB)

static char elf_path[STR_LEN];
static int multiboot_image = 0;

struct multiboot_info {
	uint32_t	flags;
	uint32_t	mem_lower;
	uint32_t	mem_upper;

	uint32_t	boot_device;
	uint32_t	cmdline;
	uint32_t	mods_count;
	uint32_t	mods_addr;

	uint32_t	bin_sec[4];

	uint32_t	mmap_length;
	uint32_t	mmap_addr;

	uint32_t	drives_length;
	uint32_t	drives_addr;

	uint32_t	config_table;

	uint32_t	boot_loader_name;
};

int
acrn_parse_elf(char *arg)
{
	size_t len = strlen(arg);

	if (len < STR_LEN) {
		strncpy(elf_path, arg, len + 1);
		assert(check_image(elf_path) == 0);

		elf_file_name = elf_path;

		printf("SW_LOAD: get elf path %s\n", elf_path);
		return 0;
	} else
		return -1;
}

static char elf_buf[ELF_BUF_LEN];

static void load_elf32(struct vmctx *ctx, FILE *fp, void *buf)
{
	int i;
	size_t phd_size, read_len;
	Elf32_Ehdr *elf32_header = (Elf32_Ehdr *)buf;

	if (elf32_header->e_phoff != 0) {
		fprintf(stderr,
			"there is 32bit program header @%d offset with %d entry\n",
				elf32_header->e_phoff, elf32_header->e_phnum);

		fprintf(stderr, "program header entry size: %d\n",
				elf32_header->e_phentsize);
	}

	if (elf32_header->e_shoff != 0) {
		fprintf(stderr, "there is 32bit section header @%d offset with %d entry\n",
				elf32_header->e_shoff, elf32_header->e_shnum);
	}

	phd_size = elf32_header->e_phentsize * elf32_header->e_phnum;
	Elf32_Phdr *elf32_phdr = (Elf32_Phdr *)malloc(phd_size);
	fseek(fp, elf32_header->e_phoff, SEEK_SET);
	read_len = fread((void *)elf32_phdr, 1, phd_size, fp);
	if (read_len != phd_size) {
		fprintf(stderr, "can't get %ld data\n", phd_size);
	}

	for (i = 0; i < elf32_header->e_phnum; i++) {
		fprintf(stderr, "type: %d, offset: %d, vaddr: 0x%x, paddr: 0x%x\n",
			elf32_phdr->p_type, elf32_phdr->p_offset, elf32_phdr->p_vaddr,
			elf32_phdr->p_paddr);

		fprintf(stderr, "file size: %d, mem size: %d, flags: 0x%x, alignment: 0x%x\n",
			elf32_phdr->p_filesz, elf32_phdr->p_memsz,
			elf32_phdr->p_flags, elf32_phdr->p_align);

		if (elf32_phdr->p_type == PT_LOAD) {
			void *seg_ptr = ctx->baseaddr + elf32_phdr->p_vaddr;

			fseek(fp, elf32_phdr->p_offset, SEEK_SET);
			read_len = fread(seg_ptr, 1, elf32_phdr->p_filesz, fp);
			if (read_len != elf32_phdr->p_filesz) {
				fprintf(stderr, "Can't get %d data\n",
						elf32_phdr->p_filesz);
			}

			fprintf(stderr, "elf exec entry: 0x%x\n", elf32_header->e_entry - elf32_phdr->p_vaddr);
		}

		elf32_phdr++;
	}
}

static int
acrn_load_elf(struct vmctx *ctx, char *elf_file_name, unsigned long *entry)
{
	int i;
	FILE *fp;
	size_t read_len = 0;
	unsigned int *ptr32;
	Elf32_Ehdr *elf_ehdr;

	fp = fopen(elf_file_name, "r");
	if (fp == NULL) {
		fprintf(stderr, "Can't open elf file: %s\r\n", elf_file_name);
		return -1;
	}

	memset(elf_buf, 0, ELF_BUF_LEN);
	read_len = fread(elf_buf, 1, ELF_BUF_LEN, fp);
	if (read_len != ELF_BUF_LEN) {
		fprintf(stderr, "Can't get %ld data\n", ELF_BUF_LEN);
	}

	ptr32 = (unsigned int *) elf_buf;
	for (i = 0; i < ELF_BUF_LEN/4; i++) {
		if (ptr32[i] == MULTIBOOT_HEAD_MAGIC) {
			int j = 0;
			unsigned int sum = 0;
			for (j = 0; j < 3; j++) {
				sum += ptr32[j];
			}
			if (0 == sum) multiboot_image = 1;
			break;
		}
	}

	elf_ehdr = (Elf32_Ehdr *) elf_buf;

	if ((elf_ehdr->e_ident[EI_MAG0] == ELFMAG0) &&
		(elf_ehdr->e_ident[EI_MAG1] == ELFMAG1) &&
		(elf_ehdr->e_ident[EI_MAG2] == ELFMAG2) &&
		(elf_ehdr->e_ident[EI_MAG3] == ELFMAG3)) {
		fprintf(stderr, "elf file\n");
	} else {
		fprintf(stderr, "This is not elf file\n");
		exit(-1);
	}

	if (elf_ehdr->e_ident[EI_CLASS] == ELFCLASS32) {
		load_elf32(ctx, fp, elf_buf);
	} else {
		fprintf(stderr, "No available 64bit elf loader ready yet\n");
		exit(-1);
	}

	*entry = elf_ehdr->e_entry;

	return 0;
}

static uint64_t
acrn_prepare_elf(struct vmctx *ctx)
{
	unsigned long entry = 0;

	acrn_load_elf(ctx, elf_file_name, &entry);

	return entry;
}

#define	MULTIBOOT_OFFSET	(0x20000)

static const uint64_t acrn_init_gdt[] = {
	0x0UL,
	0x0UL,
	0x00CF9B000000FFFFUL,	/* Linear Code */
	0x00CF93000000FFFFUL,	/* Linear Data */
};

int
acrn_sw_load_elf(struct vmctx *ctx)
{
	uint64_t entry = 0;
	struct multiboot_info *mi;

	entry = acrn_prepare_elf(ctx);

	/* set guest bsp state. Will call hypercall set bsp state
	 * after bsp is created.
	 */
	memset(&ctx->bsp_regs, 0, sizeof( struct acrn_set_vcpu_regs));
	ctx->bsp_regs.vcpu_id = 0;

	ctx->bsp_regs.vcpu_regs.gdt.limit = sizeof(acrn_init_gdt) - 1;
	ctx->bsp_regs.vcpu_regs.gdt.base = GDT_LOAD_OFF(ctx);

	/* CR0_ET | CR0_NE | CR0_PE */
	ctx->bsp_regs.vcpu_regs.cr0 = 0x31U;

	ctx->bsp_regs.vcpu_regs.cs_ar = 0xCF9BU;
	ctx->bsp_regs.vcpu_regs.cs_sel = 0x10U;

	ctx->bsp_regs.vcpu_regs.ds_sel = 0x18U;
	ctx->bsp_regs.vcpu_regs.ss_sel = 0x18U;
	ctx->bsp_regs.vcpu_regs.es_sel = 0x18U;

	ctx->bsp_regs.vcpu_regs.rip = entry;
	ctx->bsp_regs.vcpu_regs.gprs.rax = MULTIBOOT_MACHINE_STATE_MAGIC;

	if (multiboot_image == 1) {
		mi = (struct multiboot_info *)ctx->baseaddr + MULTIBOOT_OFFSET;
		memset(mi, 0, sizeof(*mi));

		mi->flags = 1;
		mi->mem_lower = 0;
		mi->mem_upper = GDT_LOAD_OFF(ctx);

		ctx->bsp_regs.vcpu_regs.gprs.rbx = MULTIBOOT_OFFSET;
	}

	return 0;
}
