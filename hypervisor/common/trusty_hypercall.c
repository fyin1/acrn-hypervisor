/*
 * Copyright (C) 2018 Intel Corporation. All rights reserved.
 *
 * SPDX-License-Identifier: BSD-3-Clause
 */

#include <hypervisor.h>
#include <hypercall.h>

/* this hcall is only come from trusty enabled vcpu itself, and cannot be
 * called from other vcpus
 */
int64_t hcall_world_switch(struct vcpu *vcpu)
{
	int32_t next_world_id = !(vcpu->arch_vcpu.cur_context);

	if (next_world_id >= NR_WORLD) {
		pr_err("%s world_id %d exceed max number of Worlds\n",
			__func__, next_world_id);
		return -EINVAL;
	}

	if (!vcpu->vm->sworld_control.flag.supported) {
		pr_err("Secure World is not supported!\n");
		return -EPERM;
	}

	if (!vcpu->vm->sworld_control.flag.active) {
		pr_err("Trusty is not initialized!\n");
		return -EPERM;
	}

	switch_world(vcpu, next_world_id);
	return 0;
}

/* this hcall is only come from trusty enabled vcpu itself, and cannot be
 * called from other vcpus
 */
int64_t hcall_initialize_trusty(struct vcpu *vcpu, uint64_t param)
{
	if (!vcpu->vm->sworld_control.flag.supported) {
		pr_err("Secure World is not supported!\n");
		return -EPERM;
	}

	if (vcpu->vm->sworld_control.flag.active) {
		pr_err("Trusty already initialized!\n");
		return -EPERM;
	}

	if (vcpu->arch_vcpu.cur_context != NORMAL_WORLD) {
		pr_err("%s, must initialize Trusty from Normal World!\n",
			__func__);
		return -EPERM;
	}

	if (!initialize_trusty(vcpu, param))
		return -ENODEV;

	vcpu->vm->sworld_control.flag.active = 1;;

	return 0;
}

int64_t hcall_save_sworld_context(struct vcpu *vcpu)
{
	if (!vcpu->vm->sworld_control.flag.supported) {
		pr_err("Secure World is not supported!\n");
		return -1;
	}

	if (!vcpu->vm->sworld_control.flag.active) {
		pr_err("Trusty is not initialized!\n");
		return -1;
	}

	/* Currently, Secure World is only running on vCPU0 */
	if (!is_vcpu_bsp(vcpu)) {
		pr_err("This hypercall is only allowed from vcpu0!");
		return -1;
	}

	save_sworld_context(vcpu);

	vcpu->vm->sworld_control.flag.ctx_saved = 1;

	return 0;
}

int64_t hcall_restore_sworld_context(struct vcpu *vcpu)
{
	if (!vcpu->vm->sworld_control.flag.supported) {
		pr_err("Secure World is not supported!\n");
		return -1;
	}

	if (!vcpu->vm->sworld_control.flag.ctx_saved) {
		pr_err("%s: No Valid saved area to restore!\n", __func__);
		return -1;
	}

	if (vcpu->vm->sworld_control.flag.active) {
		pr_err("Cannot restore when Secure World is active!\n");
		return -1;
	}

	/* Currently, Secure World is only running on CPU0 */
	if (!is_vcpu_bsp(vcpu)) {
		pr_err("This hypercall is only allowed from vcpu0!\n");
		return -1;
	}

	restore_sworld_context(vcpu);

	vcpu->vm->sworld_control.flag.ctx_saved = 0;
	vcpu->vm->sworld_control.flag.active = 1;;

	return 0;
}
