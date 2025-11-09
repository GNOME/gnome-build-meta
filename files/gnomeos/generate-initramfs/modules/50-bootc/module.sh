install() {
    if [ "${INITRD_MODE-sysupdate}" != oci ]; then
        exit 0
    fi

    install_files \
        /usr/lib/bootc/initramfs-setup \
        /usr/lib/systemd/system/bootc-root-setup.service

    mkdir -p "${root}/usr/lib/systemd/system/initrd-root-fs.target.wants"
    ln -s ../bootc-root-setup.service "${root}/usr/lib/systemd/system/initrd-root-fs.target.wants/bootc-root-setup.service"
}
