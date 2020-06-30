#!/bin/bash
# board: WHL-IPC-I7, scenario: INDUSTRY_VT_HYBRID, uos: GENERIC LINUX
# pci devices for passthru
declare -A passthru_vpid
declare -A passthru_bdf

passthru_vpid=(
)
passthru_bdf=(
)

function tap_net() {
# create a unique tap device for each VM
tap=$1
tap_exist=$(ip a | grep "$tap" | awk '{print $1}')
if [ "$tap_exist"x != "x" ]; then
  echo "tap device existed, reuse $tap"
else
  ip tuntap add dev $tap mode tap
fi

# if acrn-br0 exists, add VM's unique tap device under it
br_exist=$(ip a | grep acrn-br0 | awk '{print $1}')
if [ "$br_exist"x != "x" -a "$tap_exist"x = "x" ]; then
  echo "acrn-br0 bridge aleady exists, adding new tap device to it..."
  ip link set "$tap" master acrn-br0
  ip link set dev "$tap" down
  ip link set dev "$tap" up
fi
}

function launch_generic_linux()
{
#vm-name used to generate uos-mac address
mac=$(cat /sys/class/net/e*/address)
vm_name=post_vm_id$1
mac_seed=${mac:9:8}-${vm_name}

tap_net tap_tap_uos
#check if the vm is running or not
vm_ps=$(pgrep -a -f acrn-dm)
result=$(echo $vm_ps | grep -w "${vm_name}")
if [[ "$result" != "" ]]; then
  echo "$vm_name is running, can't create twice!"
  exit
fi

mem_size=1024M
#interrupt storm monitor for pass-through devices, params order:
#threshold/s,probe-period(s),intr-inject-delay-time(ms),delay-duration(ms)
intr_storm_monitor="--intr_monitor 10000,10,1,100"

#logger_setting, format: logger_name,level; like following
logger_setting="--logger_setting console,level=4;kmsg,level=3;disk,level=5"

acrn-dm -A -m $mem_size -s 0:0,hostbridge -U 615db82a-e189-4b4f-8dbb-d321343e4ab3 \
   --mac_seed $mac_seed \
   $logger_setting \
   -s 5,xhci,1-1:1-2 \
   -s 10,virtio-blk,/dev/sda4 \
   -s 11,virtio-net,tap_tap_uos \
   -s 8,virtio-console,@stdio:stdio_port \
   -s 2,pci-gvt -G "$2"  \
   --ovmf /usr/share/acrn/bios/OVMF.fd \
   --cpu_affinity 0,1 \
   -s 12,virtio-hyper_dmabuf \
   $vm_name
}
launch_generic_linux 3 "64 448 8"
