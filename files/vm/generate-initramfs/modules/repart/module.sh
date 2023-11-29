install() {
    install_file_at_path "${moddir}/gen-recovery-key.sh" "/usr/bin/gen-recovery-key"
    install_file_at_path "${moddir}/gnomeos.conf" "/usr/lib/systemd/system/systemd-repart.service.d/gnomeos.conf"

    install_files /usr/bin/dd /usr/bin/basenc /usr/bin/touch

    install_file_at_path "${moddir}/disable-encryption.service" "/usr/lib/systemd/system/disable-encryption.service"
    install_file_at_path "${moddir}/enable-encryption.service" "/usr/lib/systemd/system/enable-encryption.service"

    systemctl -q --root "${root}" enable disable-encryption.service
    systemctl -q --root "${root}" enable enable-encryption.service
}
