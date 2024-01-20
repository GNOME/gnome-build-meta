install() {
    install_file_at_path "${moddir}/persist-dm.rules" "/usr/lib/udev/rules.d/50-persist-dm.rules"
}
