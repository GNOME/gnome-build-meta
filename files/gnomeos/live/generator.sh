#!/usr/bin/bash

set -eu

if ! grep -qE '([[:space:]]|^)root=live:gnomeos([[:space:]]|$)' </proc/cmdline; then
    exit 0
fi

mkdir -p /run/modprobe.d
cat <<EOF >/run/modprobe.d/brd.conf
options brd rd_size=1048576 rd_nr=1
EOF

mkdir -p "${1}/initrd-root-device.target.wants"
ln -sf /usr/lib/systemd/system/gnomeos-repart-ramdisk.service "${1}/initrd-root-device.target.wants/gnomeos-repart-ramdisk.service"

cat <<EOF >"${1}/sysroot.mount"
[Unit]
Bindsto=dev-gnomeos\\x2dram\\x2droot.device
After=dev-gnomeos\\x2dram\\x2droot.device
After=gnomeos-repart-ramdisk.service
Before=initrd-root-fs.target

[Mount]
What=/dev/gnomeos-ram-root
Where=/sysroot
Type=btrfs
Options=rw,nodev,suid,exec,relatime
EOF

mkdir -p "${1}/initrd-root-fs.target.wants"
ln -sf ../sysroot.mount "${1}/initrd-root-fs.target.wants/sysroot.mount"

ln -sf /dev/null "${1}/systemd-repart.service"
