/*
 * Copyright (C) 2018 Intel Corporation. All rights reserved.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

#include <types.h>
#include <rtl.h>
#include <pci.h>
#include <uart16550.h>
#include <dbg_cmd.h>
#include <vm_config.h>

#define MAX_PORT			0x10000  /* port 0 - 64K */
#define DEFAULT_UART_PORT	0x3F8

#define MAX_CMD_LEN		64

static struct uart_cmd {
	const char *const str;
	int type;
} cmd_list[] = {
	{ "uart=port@",	PIO },	/* uart=port@0x3F8 */
	{ "uart=bdf@",	PCI },	/* uart=bdf@0:18.2 */
	{ "uart=mmio@",	MMIO },	/* uart=mmio@0xfe040000 */
	{ "uart=disabled", INVALID }
};

static void update_sos_vm_config_uart_irq(uint64_t irq)
{
	uint16_t vm_id;
	struct acrn_vm_config *vm_config;

	for (vm_id = 0U; vm_id < CONFIG_MAX_VM_NUM; vm_id++) {
		vm_config = get_vm_config(vm_id);
		if (vm_config->load_order == SOS_VM) {
			break;
		}
	}

	if (vm_id != CONFIG_MAX_VM_NUM) {
		vm_config->vuart[0].irq = irq & 0xFFFFU;
	}
}

static void update_sos_vm_config_uart_ioport(uint64_t addr)
{
	uint16_t vm_id;
	struct acrn_vm_config *vm_config;

	for (vm_id = 0U; vm_id < CONFIG_MAX_VM_NUM; vm_id++) {
		vm_config = get_vm_config(vm_id);
		if (vm_config->load_order == SOS_VM) {
			break;
		}
	}

	if (vm_id != CONFIG_MAX_VM_NUM) {
		vm_config->vuart[0].addr.port_base = addr & 0xFFFFU;
	}
}

bool handle_dbg_cmd(const char *cmd, int32_t len)
{
	uint32_t i;
	uint64_t data;

	for (i = 0; i < ARRAY_SIZE(cmd_list); i++) {
		int32_t tmp = strnlen_s(cmd_list[i].str, MAX_CMD_LEN);
		int type = cmd_list[i].type;

		/* cmd prefix should be same with one in cmd_list */
		if (len < tmp)
			continue;

		if (strncmp(cmd_list[i].str, cmd, tmp) != 0)
			continue;

		if (type == INVALID) {
			/* set uart disabled*/
			uart16550_set_property(false, type, 0UL);
		} else if (type == PIO) {
			char *pos, *start = (char *)cmd + tmp;
			uint64_t addr, irq;

			pos = strchr(start, ',');
			if (pos != NULL) {
				*pos = '\0';
				pos++;
				irq = strtoul_hex(pos);
				*--pos = ','; /* restore ',' */
				update_sos_vm_config_uart_irq(irq);
			}
			addr = strtoul_hex(start);

			if (data > MAX_PORT) {
				data = DEFAULT_UART_PORT;
			}

			update_sos_vm_config_uart_ioport(addr);
			uart16550_set_property(true, type, addr);

		} else {
			data = strtoul_hex(cmd + tmp);
			uart16550_set_property(true, type, data);
		}
	}

	return i < ARRAY_SIZE(cmd_list)? true : false;
}
