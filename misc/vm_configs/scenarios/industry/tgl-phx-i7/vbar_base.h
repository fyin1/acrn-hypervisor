/*
 * Copyright (C) 2020 Intel Corporation. All rights reserved.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

#ifndef VBAR_BASE_H_
#define VBAR_BASE_H_

#define VGA_COMPATIBLE_CONTROLLER_0_VBAR              .vbar_base[0] = PTDEV_HI_MMIO_START + 0x0UL, \
                                                      .vbar_base[2] = PTDEV_HI_MMIO_START + 0x10000000UL

#define USB_CONTROLLER_0_VBAR                         .vbar_base[0] = PTDEV_HI_MMIO_START + 0x20000000UL

#define RAM_MEMORY_0_VBAR                             .vbar_base[0] = PTDEV_HI_MMIO_START + 0x20010000UL, \
                                                      .vbar_base[2] = PTDEV_HI_MMIO_START + 0x20014000UL

#define SERIAL_BUS_CONTROLLER_0_VBAR                  .vbar_base[0] = PTDEV_HI_MMIO_START + 0x20015000UL

#define SERIAL_BUS_CONTROLLER_1_VBAR                  .vbar_base[0] = PTDEV_HI_MMIO_START + 0x20016000UL

#define SERIAL_BUS_CONTROLLER_2_VBAR                  .vbar_base[0] = PTDEV_HI_MMIO_START + 0x20017000UL

#define SERIAL_BUS_CONTROLLER_3_VBAR                  .vbar_base[0] = PTDEV_HI_MMIO_START + 0x20018000UL

#define SERIAL_BUS_CONTROLLER_4_VBAR                  .vbar_base[0] = PTDEV_HI_MMIO_START + 0x2001d000UL

#define SERIAL_BUS_CONTROLLER_5_VBAR                  .vbar_base[0] = PTDEV_HI_MMIO_START + 0x20021000UL

#define SERIAL_BUS_CONTROLLER_6_VBAR                  .vbar_base[0] = PTDEV_HI_MMIO_START + 0x20022000UL

#define SERIAL_BUS_CONTROLLER_7_VBAR                  .vbar_base[0] = PTDEV_HI_MMIO_START + 0x20201000UL

#define COMMUNICATION_CONTROLLER_0_VBAR               .vbar_base[0] = PTDEV_HI_MMIO_START + 0x20019000UL

#define COMMUNICATION_CONTROLLER_1_VBAR               .vbar_base[0] = PTDEV_HI_MMIO_START + 0x2001e000UL

#define COMMUNICATION_CONTROLLER_2_VBAR               .vbar_base[0] = PTDEV_HI_MMIO_START + 0x2001f000UL

#define COMMUNICATION_CONTROLLER_3_VBAR               .vbar_base[0] = PTDEV_HI_MMIO_START + 0x20020000UL

#define SATA_CONTROLLER_0_VBAR                        .vbar_base[0] = PTDEV_HI_MMIO_START + 0x2001a000UL, \
                                                      .vbar_base[1] = PTDEV_HI_MMIO_START + 0x2001c000UL, \
                                                      .vbar_base[5] = PTDEV_HI_MMIO_START + 0x2001c800UL

#define AUDIO_DEVICE_0_VBAR                           .vbar_base[0] = PTDEV_HI_MMIO_START + 0x20024000UL, \
                                                      .vbar_base[4] = PTDEV_HI_MMIO_START + 0x20100000UL

#define SMBUS_0_VBAR                                  .vbar_base[0] = PTDEV_HI_MMIO_START + 0x20200000UL

#define ETHERNET_CONTROLLER_0_VBAR                    .vbar_base[0] = PTDEV_HI_MMIO_START + 0x20220000UL

#define ETHERNET_CONTROLLER_1_VBAR                    .vbar_base[0] = PTDEV_HI_MMIO_START + 0x20240000UL, \
                                                      .vbar_base[3] = PTDEV_HI_MMIO_START + 0x20260000UL

#define ETHERNET_CONTROLLER_2_VBAR                    .vbar_base[0] = PTDEV_HI_MMIO_START + 0x20280000UL, \
                                                      .vbar_base[3] = PTDEV_HI_MMIO_START + 0x202a0000UL

#endif /* VBAR_BASE_H_ */
