/*
 * Copyright (C) 2020 Intel Corporation. All rights reserved.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

#include <types.h>
#include <cpu.h>
#include <cpu_caps.h>
#include <cpufeatures.h>
#include <cpuid.h>
#include <errno.h>
#include <logmsg.h>
#include <rdt.h>
#include <bits.h>
#include <board.h>
#include <vm_config.h>
#include <msr.h>

struct rdt_hw_info res_cap_info[RDT_NUM_RESOURCES] = {
	[RDT_RESOURCE_L3] = {
		.supported = false,
		.bitmask = 0,
		.cbm_len = 0,
		.clos_max = 0,
		.res_id = RDT_RESID_L3
	},
	[RDT_RESOURCE_L2] = {
		.supported = false,
		.bitmask = 0,
		.cbm_len = 0,
		.clos_max = 0,
		.res_id = RDT_RESID_L2
	},
};
const uint16_t hv_clos = 0U;
uint16_t platform_clos_num = MAX_PLATFORM_CLOS_NUM;

#ifdef	CONFIG_RDT_ENABLED
static void rdt_read_cache_alloc_cap(int res)
{
	uint32_t eax = 0U, ebx = 0U, ecx = 0U, edx = 0U;

	/* CPUID.(EAX=0x10,ECX=ResID):EAX[4:0] reports the length of CBM supported
	 * CPUID.(EAX=0x10,ECX=ResID):EBX[31:0] indicaterdt_read_cache_alloc_caps the corresponding uints
	 * may be used by other entities such as graphic and H/W outside processor.
	 * CPUID.(EAX=0x10,ECX=ResID):EDX[15:0] reports the maximun CLOS supported
	 */
	cpuid_subleaf(CPUID_RDT_ALLOCATION, res_cap_info[res].res_id, &eax, &ebx, &ecx, &edx);
	res_cap_info[res].cbm_len = (uint16_t)((eax & 0xfU) + 1U);
	res_cap_info[res].bitmask = ebx;
	res_cap_info[res].clos_max = (uint16_t)(edx & 0xffffU) + 1;
}

int32_t init_rdt_cap_info(void)
{
	uint8_t i;
	uint32_t eax = 0U, ebx = 0U, ecx = 0U, edx = 0U;
	int32_t ret = 0;

	if (pcpu_has_cap(X86_FEATURE_RDT_A)) {
		cpuid_subleaf(CPUID_RDT_ALLOCATION, 0, &eax, &ebx, &ecx, &edx);

		/* If HW supports L3 CAT, EBX[1] is set */
		if ((ebx & 2U) != 0U) {
			res_cap_info[RDT_RESOURCE_L3].supported = true;
			rdt_read_cache_alloc_cap(RDT_RESOURCE_L3);
		}

		/* If HW supports L2 CAT, EBX[2] is set */
		if ((ebx & 4U) != 0U) {
			res_cap_info[RDT_RESOURCE_L2].supported = true;
			rdt_read_cache_alloc_cap(RDT_RESOURCE_L2);
		}

		/* RDT features can support different numbers of CLOS.
		 * Set  the lowers numerical clos value (platform_clos_num)
		 * that is common between the resources as each resource's
		 * clos max value to have consistent allocation.
		 */
		for (i = 0U; i < RDT_NUM_RESOURCES; i++) {
			if (!res_cap_info[i].supported)
				continue;

			if ((platform_clos_num == 0U) || (res_cap_info[i].clos_max < platform_clos_num)) {
				pr_err("Invalid resource clos max:Res_ID=%d, platform_clos_max=%d, res_clos_max=%d\n",
					    res_cap_info[i].res_id, platform_clos_num, res_cap_info[i].clos_max);
				ret = -EINVAL;
				break;
			}
			res_cap_info[i].clos_max = platform_clos_num;
		}
	}

	return ret;
}

static bool setup_res_clos_msr(uint16_t pcpu_id, uint32_t res_id)
{
	bool ret = true;
	uint16_t i;
	uint32_t msr_index;
	uint64_t val;

	for (i = 0; i < platform_clos_num; i++) {
		switch (res_id) {
		case RDT_RESID_L3:
			if ((fls32(platform_l3_clos_array[i].clos_mask) > res_cap_info[RDT_RESOURCE_L3].cbm_len) ||
				(platform_l3_clos_array[i].msr_index != (MSR_IA32_L3_MASK_BASE + i))) {
				ret = false;
				pr_err("%s: Configure L3 CLOS Mask and MSR index in board.c correctly", __func__);
			} else {
				msr_index = platform_l3_clos_array[i].msr_index;
				val = (uint64_t)platform_l3_clos_array[i].clos_mask;
				msr_write_pcpu(msr_index, val, pcpu_id);
			}
			break;
		case RDT_RESID_L2:
			if ((fls32(platform_l2_clos_array[i].clos_mask) > res_cap_info[RDT_RESOURCE_L2].cbm_len) ||
				(platform_l2_clos_array[i].msr_index != (MSR_IA32_L2_MASK_BASE + i))) {
				ret = false;
				pr_err("%s: Configure L2 CLOS Mask and MSR index in board.c correctly", __func__);
			} else {
				msr_index = platform_l2_clos_array[i].msr_index;
				val = (uint64_t)platform_l2_clos_array[i].clos_mask;
				msr_write_pcpu(msr_index, val, pcpu_id);
			}
			break;
		default:
			pr_err("Invalid RDT resource configuration\n");
		}

		if (ret != true)
			break;
	}

	return ret;
}

bool setup_clos(uint16_t pcpu_id)
{
	bool ret = true;
	uint16_t i;

	for (i = 0U; i < RDT_NUM_RESOURCES; i++) {
		if (!res_cap_info[i].supported) {
			continue;
		}
		ret = setup_res_clos_msr(pcpu_id, res_cap_info[i].res_id);
	}

	if (ret != false) {
		/* set hypervisor RDT resource clos */
		msr_write_pcpu(MSR_IA32_PQR_ASSOC, clos2pqr_msr(hv_clos), pcpu_id);
	}

	return ret;
}

uint64_t clos2pqr_msr(uint16_t clos)
{
	uint64_t pqr_assoc;

	pqr_assoc = msr_read(MSR_IA32_PQR_ASSOC);
	pqr_assoc = (pqr_assoc & 0xffffffffUL) | ((uint64_t)clos << 32U);

	return pqr_assoc;
}
#else
int32_t init_rdt_cap_info(void)
{
	return 0U;
}

bool setup_clos(__unused uint16_t pcpu_id)
{
	return true;
}

uint64_t clos2pqr_msr(__unused uint16_t clos)
{
	return 0UL;
}
#endif

bool platform_rdt_support(void)
{
	bool ret = false;

	if (res_cap_info[RDT_RESOURCE_L3].supported ||
	    res_cap_info[RDT_RESOURCE_L2].supported) {
		ret = true;
	}

	return ret;
}
