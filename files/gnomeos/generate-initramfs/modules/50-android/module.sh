install() {
    install_file_at_path "${moddir}/subpartitions@.service" "/usr/lib/systemd/system/subpartitions@.service"
    install_file_at_path "${moddir}/80-subpartitions.rules" "/usr/lib/udev/rules.d/80-subpartitions.rules"
}
