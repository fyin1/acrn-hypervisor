/*-
* Copyright (c) 2011 NetApp, Inc.
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
* $FreeBSD$
*/


/*_
* Emulate a PCI Host bridge:
* Intel Corporation Celeron N3350/Pentium N4200/Atom E3900
* Series Host Bridge (rev 0b)
*/

#include <vm.h>
#include <errno.h>
#include <logmsg.h>
#include <pci.h>
#include "vpci_priv.h"

static void vpcibridge_init(struct pci_vdev *vdev, void *arg)
{
	(void)arg;
	uint32_t offset;

	pr_err("%s: enter", __func__);

	/* PCI config space */
	pci_vdev_write_cfg_u16(vdev, PCIR_VENDOR, (uint16_t)0x8086U);
	pci_vdev_write_cfg_u16(vdev, PCIR_DEVICE, (uint16_t)0xc6a2U);

	pci_vdev_write_cfg_u8(vdev, PCIR_REVID, (uint8_t)0xf0U);

	pci_vdev_write_cfg_u8(vdev, PCIR_HDRTYPE, (uint8_t)PCIM_HDRTYPE_BRIDGE | PCIM_MFDEV);
	pci_vdev_write_cfg_u8(vdev, PCIR_CLASS, (uint8_t)PCIC_BRIDGE);
	pci_vdev_write_cfg_u8(vdev, PCIR_SUBCLASS, (uint8_t)PCIS_BRIDGE_PCI);

	for (offset = 0x18; offset <=0x3C; offset += 4) {
		uint32_t val;

		val = pci_pdev_read_cfg(vdev->pdev->bdf, offset, 4U);
		pci_vdev_write_cfg_u32(vdev, offset, val);
	}
}

static void vpcibridge_deinit(__unused struct pci_vdev *vdev, __unused void *arg)
{
	pr_err("%s: enter", __func__);
}

static int32_t vpcibridge_cfgread(struct pci_vdev *vdev, uint32_t offset,
	uint32_t bytes, uint32_t *val)
{
	pr_err("%s: enter", __func__);
	*val = pci_vdev_read_cfg(vdev, offset, bytes);

	return 0;
}

static int32_t vpcibridge_cfgwrite(struct pci_vdev *vdev, uint32_t offset,
	uint32_t bytes, uint32_t val)
{
	pr_err("%s: enter", __func__);
	if (!pci_bar_access(offset)) {
		pci_vdev_write_cfg(vdev, offset, bytes, val);
	}

	return 0;
}

struct pci_vdev_ops vpcibridge_ops = {
	.init        = vpcibridge_init,
	.deinit      = vpcibridge_deinit,
	.cfgwrite    = vpcibridge_cfgwrite,
	.cfgread     = vpcibridge_cfgread,
};
