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
#include <stdbool.h>

#include "dm.h"
#include "vmmapi.h"
#include "sw_load.h"
#include "log.h"

struct mem_region {
	char sig[6];
	uint16_t rev;
};

static struct mem_region mg = {
	.sig = "JHCOMM",
	.rev = 2,
};


static char inmate_path[STR_LEN];
uint64_t inmate_size;

int
acrn_parse_inmate(char *arg)
{
	int error = -1;
	size_t len = strnlen(arg, STR_LEN);

	if (len < STR_LEN) {
		strncpy(inmate_path, arg, len + 1);
		if (check_image(inmate_path, 8 * MB, &inmate_size) == 0) {
			inmate_file_name = inmate_path;
			printf("SW_LOAD: get inmate path %s\n", inmate_path);
			error = 0;
		}
	}
	return error;
}

#define	INMATE_OFFSET	0
#define	CMDLINE_OFFSET	0x1000
#define	SERIAL_OPT	"con-type=8250 con-base=0x3f8"

#define	MEM_REGION_OFFSET 0x100000

static int
acrn_prepare_inmate(struct vmctx *ctx)
{
	FILE *fp;
	size_t read;

	fp = fopen(inmate_path, "r");
	if (fp == NULL) {
		pr_err("SW_LOAD ERR: could not open inmate file: %s\n",
			inmate_path);
		return -1;
	}

	fseek(fp, 0, SEEK_END);

	if (ftell(fp) != inmate_size) {
		pr_err("SW_LOAD ERR: inmate file changed\n");
		fclose(fp);
		return -1;
	}

	fseek(fp, 0, SEEK_SET);
	read = fread(ctx->baseaddr + INMATE_OFFSET, sizeof(char), inmate_size, fp);
	if (read < inmate_size) {
		pr_err("SW_LOAD ERR: could not read whole inmate file\n");
		fclose(fp);
		return -1;
	}
	fclose(fp);

	strcpy((char *)(ctx->baseaddr + CMDLINE_OFFSET), SERIAL_OPT);
	memcpy((void *)(ctx->baseaddr + MEM_REGION_OFFSET), &mg, sizeof(mg));

	return 0;
}

int
acrn_sw_load_inmate(struct vmctx *ctx)
{
	int ret;

	ret = acrn_prepare_inmate(ctx);
	if (ret)
		return ret;

	/* set guest bsp state. Will call hypercall set bsp state
	 * after bsp is created.
	 */
	memset(&ctx->bsp_regs, 0, sizeof( struct acrn_set_vcpu_regs));
	ctx->bsp_regs.vcpu_id = 0;

	/* CR0_ET | CR0_NE */
	ctx->bsp_regs.vcpu_regs.cr0 = 0x30U;
	ctx->bsp_regs.vcpu_regs.cs_ar = 0x009FU;
	ctx->bsp_regs.vcpu_regs.cs_sel = 0xF000U;
	ctx->bsp_regs.vcpu_regs.cs_limit = 0xFFFFU;
	/* entry for inmate is adddress 0 */
	ctx->bsp_regs.vcpu_regs.cs_base = 0x0000U;
	ctx->bsp_regs.vcpu_regs.rip = 0x0000U;

	return 0;
}
