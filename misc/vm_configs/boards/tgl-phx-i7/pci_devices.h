/*
 * Copyright (C) 2020 Intel Corporation. All rights reserved.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

/*
 * BIOS Information
 * Vendor: American Megatrends International, LLC.
 * Version: TL37T108
 * Release Date: 11/18/2020
 * BIOS Revision: 5.19
 *
 * Base Board Information
 * Manufacturer: Maxtang
 * Product Name: TL37
 * Version: V1.0
 */

#ifndef PCI_DEVICES_H_
#define PCI_DEVICES_H_

#define HOST_BRIDGE                             .pbdf.bits = {.b = 0x00U, .d = 0x00U, .f = 0x00U}

#define VGA_COMPATIBLE_CONTROLLER_0             .pbdf.bits = {.b = 0x00U, .d = 0x02U, .f = 0x00U}

#define USB_CONTROLLER_0                        .pbdf.bits = {.b = 0x00U, .d = 0x14U, .f = 0x00U}

#define RAM_MEMORY_0                            .pbdf.bits = {.b = 0x00U, .d = 0x14U, .f = 0x02U}

#define SERIAL_BUS_CONTROLLER_0                 .pbdf.bits = {.b = 0x00U, .d = 0x15U, .f = 0x00U}

#define SERIAL_BUS_CONTROLLER_1                 .pbdf.bits = {.b = 0x00U, .d = 0x15U, .f = 0x01U}

#define SERIAL_BUS_CONTROLLER_2                 .pbdf.bits = {.b = 0x00U, .d = 0x15U, .f = 0x02U}

#define SERIAL_BUS_CONTROLLER_3                 .pbdf.bits = {.b = 0x00U, .d = 0x15U, .f = 0x03U}

#define SERIAL_BUS_CONTROLLER_4                 .pbdf.bits = {.b = 0x00U, .d = 0x19U, .f = 0x00U}

#define SERIAL_BUS_CONTROLLER_5                 .pbdf.bits = {.b = 0x00U, .d = 0x1EU, .f = 0x02U}

#define SERIAL_BUS_CONTROLLER_6                 .pbdf.bits = {.b = 0x00U, .d = 0x1EU, .f = 0x03U}

#define SERIAL_BUS_CONTROLLER_7                 .pbdf.bits = {.b = 0x00U, .d = 0x1FU, .f = 0x05U}

#define COMMUNICATION_CONTROLLER_0              .pbdf.bits = {.b = 0x00U, .d = 0x16U, .f = 0x00U}

#define COMMUNICATION_CONTROLLER_1              .pbdf.bits = {.b = 0x00U, .d = 0x19U, .f = 0x02U}

#define COMMUNICATION_CONTROLLER_2              .pbdf.bits = {.b = 0x00U, .d = 0x1EU, .f = 0x00U}

#define COMMUNICATION_CONTROLLER_3              .pbdf.bits = {.b = 0x00U, .d = 0x1EU, .f = 0x01U}

#define SATA_CONTROLLER_0                       .pbdf.bits = {.b = 0x00U, .d = 0x17U, .f = 0x00U}

#define PCI_BRIDGE_0                            .pbdf.bits = {.b = 0x00U, .d = 0x1CU, .f = 0x00U}

#define PCI_BRIDGE_1                            .pbdf.bits = {.b = 0x00U, .d = 0x1CU, .f = 0x07U}

#define PCI_BRIDGE_2                            .pbdf.bits = {.b = 0x00U, .d = 0x1DU, .f = 0x00U}

#define PCI_BRIDGE_3                            .pbdf.bits = {.b = 0x00U, .d = 0x1DU, .f = 0x01U}

#define ISA_BRIDGE_0                            .pbdf.bits = {.b = 0x00U, .d = 0x1FU, .f = 0x00U}

#define AUDIO_DEVICE_0                          .pbdf.bits = {.b = 0x00U, .d = 0x1FU, .f = 0x03U}

#define SMBUS_0                                 .pbdf.bits = {.b = 0x00U, .d = 0x1FU, .f = 0x04U}

#define ETHERNET_CONTROLLER_0                   .pbdf.bits = {.b = 0x00U, .d = 0x1FU, .f = 0x06U}

#define ETHERNET_CONTROLLER_1                   .pbdf.bits = {.b = 0x02U, .d = 0x00U, .f = 0x00U}

#define ETHERNET_CONTROLLER_2                   .pbdf.bits = {.b = 0x04U, .d = 0x00U, .f = 0x00U}

#endif /* PCI_DEVICES_H_ */
