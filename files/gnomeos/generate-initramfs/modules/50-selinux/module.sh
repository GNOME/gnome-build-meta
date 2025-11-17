install() {
    if [ "${INITRD_MODE-sysupdate}" != sysupdate ]; then
        exit 0
    fi

    install_file_at_path "${moddir}/ensure-selinux-config.service" "/usr/lib/systemd/system/ensure-selinux-config.service"
    install_file_at_path "${moddir}/setfiles-live.service" "/usr/lib/systemd/system/setfiles-live.service"
    install_file "/usr/bin/setfiles"

    systemctl -q --root "${root}" enable ensure-selinux-config.service
    systemctl -q --root "${root}" enable setfiles-live.service
}
