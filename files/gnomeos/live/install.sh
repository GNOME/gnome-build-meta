#!/bin/bash

set -eu

source="${1}"
target="${2}"

part() {
    case "${1}" in
    *[0-9])
        echo "${1}p${2}"
        ;;
    *)
        echo "${1}${2}"
        ;;
    esac
}

echo -n foobar >keyfile

wipefs -a "${target}"
# If we want to install a system for OEM, we just add --defer-partitions=root and skip the part about / and go to copy the kernel.
systemd-repart --dry-run=no --key-file=keyfile --tpm2-device=auto --empty=allow --tpm2-pcrlock= --definitions=/usr/lib/repart.fromlive.d "${target}"

cryptsetup open "$(part "${target}" 6)" root --key-file=keyfile
wipefs -a /dev/mapper/root
btrfs replace start 1 /dev/mapper/root /
# We will have to find a way to properly track the replace.
sleep 1
btrfs filesystem resize 1:max /
modprobe -r brd

# We need to copy the kernel from the live system. Though maybe we could have a second CopyFiles in the repart.d for that.
mkdir -p /var/tmp/old-efi
mount -o ro "$(part "${source}" 1)" /var/tmp/old-efi
mkdir -p /efi
mount "$(part "${target}" 1)" /efi
mkdir -p /efi/EFI/Linux
cp /var/tmp/old-efi/EFI/Linux/*.efi /efi/EFI/Linux/
umount /var/tmp/old-efi

new_dev="$(part "${target}" 3)"
new_hash_dev="$(part "${target}" 2)"
new_dev_num="$(stat -c %Hr:%Lr "${new_dev}")"
new_hash_dev_num="$(stat -c %Hr:%Lr "${new_hash_dev}")"

dmsetup table usr >old-params
(
    cut -d " " -f -4 <old-params | tr -d '\n'
    echo -n " ${new_dev_num} ${new_hash_dev_num} "
    cut -d " " -f 7- <old-params | tr -d '\n'
) >new-params
dmsetup -r reload usr new-params
dmsetup resume usr

case "${source}" in
    /dev/loop*)
        losetup -d "${source}"
        ;;
esac
