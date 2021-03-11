/*
 * Copyright (C) 2020 Intel Corporation. All rights reserved.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

#ifndef MISC_CFG_H
#define MISC_CFG_H

#define SOS_ROOTFS		"root=/dev/sda3 "
#define SOS_CONSOLE		"console=ttyS0 "
#define SOS_COM1_BASE		0x240U
#define SOS_COM1_IRQ		5U
#define SOS_COM2_BASE		0x248U
#define SOS_COM2_IRQ		5U

#define SOS_BOOTARGS_DIFF	"rw " \
				"rootwait "	\
				"console=ttyS0 "	\
				"consoleblank=0 "	\
				"no_timer_check "	\
				"quiet "	\
				"loglevel=3 "	\
				"maxcpus=4"


#define SOS_VM_CONFIG_CPU_AFFINITY	(AFFINITY_CPU(0U) | AFFINITY_CPU(1U) | AFFINITY_CPU(2U) | AFFINITY_CPU(3U))
#define VM1_CONFIG_CPU_AFFINITY	(AFFINITY_CPU(0U) | AFFINITY_CPU(1U))
#define VM2_CONFIG_CPU_AFFINITY	(AFFINITY_CPU(2U) | AFFINITY_CPU(3U))
#define VM3_CONFIG_CPU_AFFINITY	(AFFINITY_CPU(0U) | AFFINITY_CPU(1U))

#ifdef CONFIG_RDT_ENABLED

/*
 * The maximum CLOS that is allowed by ACRN hypervisor,
 * its value is set to be least common Max CLOS (CPUID.(EAX=0x10,ECX=ResID):EDX[15:0])
 * among all supported RDT resources in the platform. In other words, it is
 * min(maximum CLOS of L2, L3 and MBA). This is done in order to have consistent
 * CLOS allocations between all the RDT resources.
 */
#define HV_SUPPORTED_MAX_CLOS	0U

/*
 * Max number of Cache Mask entries corresponding to each CLOS.
 * This can vary if CDP is enabled vs disabled, as each CLOS entry
 * will have corresponding cache mask values for Data and Code when
 * CDP is enabled.
 */
#define MAX_MBA_CLOS_NUM_ENTRIES	0U

/* Max number of MBA delay entries corresponding to each CLOS. */
#define MAX_CACHE_CLOS_NUM_ENTRIES	0U


#define VM0_VCPU_CLOS			{0U}
#define VM1_VCPU_CLOS			{0U, 0U}
#define VM2_VCPU_CLOS			{0U, 0U}
#define VM3_VCPU_CLOS			{0U, 0U}
#endif



#define VM0_PT_INTX_NUM	0U

#endif /* MISC_CFG_H */
