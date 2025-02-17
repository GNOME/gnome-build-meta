install() {
    install_files \
        /usr/lib/systemd/system-generators/gnomeos-live \
        /usr/lib/udev/rules.d/90-ramfs-root.rules \
        /usr/lib/systemd/system/gnomeos-repart-ramdisk.service

    for path in $(modinfo -k "${kernelver}" -b /usr -n brd); do
        case "${path}" in
            /*)
                install_file "${path}"
                ;;
        esac
    done
}
