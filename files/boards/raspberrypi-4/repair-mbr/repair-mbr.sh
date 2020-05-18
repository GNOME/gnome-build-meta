#!/bin/sh

set -eu

root_part="$(systemctl show -p What sysroot.mount | sed "s/^What=//")"
if [ -z "${root_part}" ]; then
    echo "Cannot find sysroot partition" 1&>2
    exit 1
fi
root_part="$(readlink -f "${root_part}")"
if [ -z "${root_part}" ]; then
    echo "Cannot find sysroot partition block file" 1&>2
    exit 1
fi

root_disk=$(echo "${root_part}" | sed -E "/([0-9])p[0-9]+$/{;s//\1/;q};s/[0-9]+$//")
if [ "${root_disk}" = "${root_part}" ]; then
    echo "Cannot find root disk block file" 1&>2
    exit 1
fi

if sfdisk --label-nested mbr "${root_disk}" | grep 'type=c' >/dev/null; then
    echo "Bootable MBR partition found"
    exit 0
fi

parts="$(sfdisk -d "${root_disk}")"
boot="$(echo "${parts}" | grep LegacyBIOSBootable)"
prefix=$(echo "${boot}" | sed 's/[0-9]* : .*//')
start=$(echo "${boot}" | sed 's/.*start= *\([0-9]*\).*/\1/')
size=$(echo "${boot}" | sed 's/.*size= *\([0-9]*\).*/\1/')

sfdisk --label-nested mbr "${root_disk}" <<EOF
${prefix}1 : start=${start}, size=${size}, type=c, bootable
${prefix}2 : start=1, size=33, type=ee
EOF

udevadm settle
