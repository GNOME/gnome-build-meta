install() {
    if [ "${INITRD_MODE-sysupdate}" != sysupdate ]; then
        exit 0
    fi

    install_files \
        "/usr/lib/systemd/system/initrd-confext.service" \
        "/usr/lib/systemd/system/initrd-migrate-confext.service" \
        "/usr/lib/gnomeos/migrate-confext" \
        "/usr/lib/systemd/system/initrd-create-mutable-etc.service" \
        "/usr/lib/tmpfiles.d/mutable-etc.conf"

    mkdir -p "${root}/usr/lib/systemd/system/initrd-fs.target.wants"

    ln -s ../initrd-confext.service "${root}/usr/lib/systemd/system/initrd.target.wants/initrd-confext.service"
    ln -s ../initrd-migrate-confext.service "${root}/usr/lib/systemd/system/initrd.target.wants/initrd-migrate-confext.service"
    ln -s ../initrd-create-mutable-etc.service "${root}/usr/lib/systemd/system/initrd.target.wants/initrd-create-mutable-etc.service"
}
