.section ".rodata.acpi_oem","a",@progbits

.globl oem_dsdt_start, oem_dsdt_end
oem_dsdt_start:
.incbin	"arch/x86/configs/apl-mrb/dsdt.aml"
oem_dsdt_end:

.globl oem_facp_start, oem_facp_end
oem_facp_start:
.incbin "arch/x86/configs/apl-mrb/facp.aml"
oem_facp_end:
