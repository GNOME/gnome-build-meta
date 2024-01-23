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

    install_file_at_path "${moddir}/systemd-udev-trigger-btrfs.conf" "/usr/lib/systemd/system/systemd-udev-trigger.service.d/btrfs.conf"
    systemctl -q --root "${root}" add-wants sysinit.target modprobe@btrfs.service
}
