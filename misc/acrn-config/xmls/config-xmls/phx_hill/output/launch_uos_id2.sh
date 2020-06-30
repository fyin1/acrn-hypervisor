#!/bin/bash
# board: WHL-IPC-I7, scenario: INDUSTRY_VT_HYBRID, uos: PREEMPT-RT LINUX
# pci devices for passthru
declare -A passthru_vpid
declare -A passthru_bdf

passthru_vpid=(
["nvme"]="126f 2263"
)
passthru_bdf=(
["nvme"]="0000:02:00.0"
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

function launch_preempt_rt_linux()
{
#vm-name used to generate uos-mac address
mac=$(cat /sys/class/net/e*/address)
vm_name=post_vm_id$1
mac_seed=${mac:9:8}-${vm_name}

tap_net tap_tap_rtos
#check if the vm is running or not
vm_ps=$(pgrep -a -f acrn-dm)
result=$(echo $vm_ps | grep -w "${vm_name}")
if [[ "$result" != "" ]]; then
  echo "$vm_name is running, can't create twice!"
  exit
fi

modprobe pci_stub
# Passthrough NVME
echo ${passthru_vpid["nvme"]} > /sys/bus/pci/drivers/pci-stub/new_id
echo ${passthru_bdf["nvme"]} > /sys/bus/pci/devices/${passthru_bdf["nvme"]}/driver/unbind
echo ${passthru_bdf["nvme"]} > /sys/bus/pci/drivers/pci-stub/bind

mem_size=1024M
#interrupt storm monitor for pass-through devices, params order:
#threshold/s,probe-period(s),intr-inject-delay-time(ms),delay-duration(ms)
intr_storm_monitor="--intr_monitor 10000,10,1,100"

#logger_setting, format: logger_name,level; like following
logger_setting="--logger_setting console,level=4;kmsg,level=3;disk,level=5"

acrn-dm -A -m $mem_size -s 0:0,hostbridge -U 495ae2e5-2603-4d64-af76-d4bc5a8ec0e5 \
   --mac_seed $mac_seed \
   --virtio_poll 1000000 \
   --lapic_pt \
   --pm_notify_channel uart --pm_by_vuart tty,/dev/ttyS1 \
   $logger_setting \
   -s 5,xhci,1-5 \
   -s 9,virtio-net,tap_tap_rtos \
   -s 8,virtio-console,@stdio:stdio_port \
   --ovmf /usr/share/acrn/bios/OVMF.fd \
   --cpu_affinity 2,3 \
   $intr_storm_monitor \
   -s 4,passthru,02/00/0 \
   $vm_name
}
offline_path="/sys/class/vhm/acrn_vhm"

# Check the device file of /dev/acrn_hsm to determine the offline_path
if [ -e "/dev/acrn_hsm" ]; then
offline_path="/sys/class/acrn/acrn_hsm"
fi

# offline pinned vCPUs from SOS before launch UOS
for i in `ls -d /sys/devices/system/cpu/cpu[2..3]`; do
        online=`cat $i/online`
        idx=`echo $i | tr -cd "[1-99]"`
        echo cpu$idx online=$online
        if [ "$online" = "1" ]; then
             echo 0 > $i/online
             online=`cat $i/online`
             # during boot time, cpu hotplug may be disabled by pci_device_probe during a pci module insmod
             while [ "$online" = "1" ]; do
                     sleep 1
                     echo 0 > $i/online
                     online=`cat $i/online`
             done
             echo $idx > ${offline_path}/offline_cpu
        fi
done

launch_preempt_rt_linux 2
