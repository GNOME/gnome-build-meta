#!/bin/bash

check() {
    return 255
}

DEPENDS=(
    systemd-repart
    systemd-veritysetup
    crypt
    tpm2-tss
    systemd-pcrphase
    disable-root-fs-timeout
    gnomeos-repart
    plymouth
)

depends() {
    echo "${DEPENDS[@]}"

    return 0
}

install() {
    inst_multiple mkfs.ext4 mkfs.btrfs fsck.ext4 fsck.btrfs
}
