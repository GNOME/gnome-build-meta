install() {
    if [ "${INITRD_MODE-sysupdate}" != sysupdate ]; then
        exit 0
    fi

    install_files \
        /usr/bin/systemd-detect-virt \
        /usr/lib/systemd/systemd-makefs \
        /usr/lib/systemd/system-generators/gnomeos-live \
        /usr/lib/udev/rules.d/90-ramfs-root.rules \
        /usr/lib/systemd/system-generators/zram-generator \
        /usr/lib/systemd/system/systemd-zram-setup@.service \
        /usr/lib/systemd/system/systemd-repart.service.d/live.conf \
        /usr/lib/systemd/system/systemd-tpm2-setup-early.service.d/live.conf

    for path in $(modinfo -k "${kernelver}" -b /usr -n zram); do
        case "${path}" in
            /*)
                install_file "${path}"
                ;;
        esac
    done
}
