install() {
    install_file_at_path "${moddir}/sr-loop@.service" "/usr/lib/systemd/system/sr-loop@.service"
    install_file_at_path "${moddir}/sr-loop-partscan@.service" "/usr/lib/systemd/system/sr-loop-partscan@.service"
    install_file_at_path "${moddir}/80-sr-loop.rules" "/usr/lib/udev/rules.d/80-sr-loop.rules"
}
