BINARIES=(
    btrfs
    btrfsck
    mkfs.btrfs
    fsck
    fsck.btrfs
    dmsetup
)

install() {
    for b in "${BINARIES[@]}"; do
        install_file "/usr/bin/${b}"
    done

    install_file /usr/lib/modules-load.d
    echo btrfs >"${root}/usr/lib/modules-load.d/btrfs.conf"
}
