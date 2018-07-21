/*
 * Copyright (C) 2018 Intel Corporation. All rights reserved.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

/************************************************************************
 *
 *   FILE NAME
 *
 *       bsp_extern.h
 *
 *   DESCRIPTION
 *
 *       This file defines the generic BSP interface
 *
 ************************************************************************/
#ifndef BSP_EXTERN_H
#define BSP_EXTERN_H

#ifdef CONFIG_PLATFORM_SBL
/* The memory mapped config space base of APL which configured in ACPI MCFG
 * table is fixed to 0xe0000000, the HV console UART BDF is fixed to 0:0x18:2,
 * BAR offset is 0x10.
 */
#define UART_CFG_ADDR	(0xe0000000UL +					  \
			(0UL << 20U) + (0x18UL << 15U) + (0x2UL << 12U) + \
			0x10UL)
#endif

#define UOS_DEFAULT_START_ADDR   (0x100000000UL)
/**********************************/
/* EXTERNAL VARIABLES             */
/**********************************/
extern struct vm_description vm0_desc;
extern const struct acpi_info host_acpi_info;

/* BSP Interfaces */
void init_bsp(void);

#endif /* BSP_EXTERN_H */
