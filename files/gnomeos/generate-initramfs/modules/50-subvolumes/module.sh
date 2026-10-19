install() {
    if [ "${INITRD_MODE-sysupdate}" != sysupdate ]; then
        exit 0
    fi

    install_files /usr/lib/tmpfiles.d/gnomeos-subvolumes.conf /usr/lib/systemd/system/gnomeos-subvolumes.service

    systemctl -q --root "${root}" enable gnomeos-subvolumes.service
}
