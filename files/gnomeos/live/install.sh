#!/bin/bash

set -eu

source="/dev/gnomeos-installer/gpt"
target="${1}"

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

mkdir -p /run/cryptsetup-keys.d
echo -n ihavenotsetarecoverykey >/run/cryptsetup-keys.d/root.key

wipefs -a "${target}"
# If we want to install a system for OEM, we just add --defer-partitions=root and skip the part about / and go to copy the kernel.
systemd-repart --dry-run=no --key-file=/run/cryptsetup-keys.d/root.key --empty=allow --tpm2-device=auto --tpm2-pcrs=7 --tpm2-public-key-pcrs=11 --tpm2-pcrlock= --definitions=/usr/lib/repart.fromlive.d "${target}"

root_device="$(part "${target}" 6)"
root_device_sd="$(systemd-escape --suffix=device -p "${root_device}")"

esp_device="$(part "${target}" 1)"
esp_device_sd="$(systemd-escape --suffix=device -p "${esp_device}")"

cat <<EOF >/run/systemd/system/systemd-cryptsetup@root.service
[Unit]
Description=Cryptography Setup for %I

DefaultDependencies=no
After=cryptsetup-pre.target systemd-udevd-kernel.socket systemd-tpm2-setup-early.service
Before=blockdev@dev-mapper-%i.target
Wants=blockdev@dev-mapper-%i.target
IgnoreOnIsolate=true
Before=umount.target cryptsetup.target
Conflicts=umount.target
BindsTo=${root_device_sd}
After=${root_device_sd}

[Service]
Type=oneshot
RemainAfterExit=yes
TimeoutSec=infinity
KeyringMode=shared
OOMScoreAdjust=500
ImportCredential=cryptsetup.*
ExecStart=/usr/bin/systemd-cryptsetup attach 'root' '${root_device}' '/run/cryptsetup-keys.d/root.key'
ExecStop=/usr/bin/systemd-cryptsetup detach 'root'
EOF

cat <<EOF >/run/systemd/system/efi.mount
[Unit]
Bindstos=${esp_device_sd}
After=${esp_device_sd}

[Mount]
What=${esp_device}
Where=/efi
Type=vfat
Options=fmask=0177,dmask=0077,rw,nodev,nosuid,noexec,nosymfollow
EOF

cat <<EOF >/run/systemd/system/efi.automount
[Automount]
Where=/efi
TimeoutIdleSec=120
EOF

systemctl daemon-reload
systemctl start systemd-cryptsetup@root.service efi.automount

btrfs replace start 1 /dev/mapper/root /
sleep .1
btrfs replace status /
btrfs filesystem resize 1:max /
modprobe -r brd

# We need to copy the kernel from the live system. Though maybe we could have a second CopyFiles in the repart.d for that.
mkdir -p /efi/EFI/Linux/
cp /run/installer-esp/EFI/Linux/*.efi /efi/EFI/Linux/
umount /run/installer-esp

new_dev="$(part "${target}" 3)"
new_hash_dev="$(part "${target}" 2)"

/usr/libexec/gnomeos/swap-verity usr "${new_dev}" "${new_hash_dev}"

case "$(realpath "${source}")" in
    /dev/loop*)
        losetup -d "${source}"
        ;;
esac
