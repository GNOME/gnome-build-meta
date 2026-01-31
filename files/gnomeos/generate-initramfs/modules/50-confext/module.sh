install() {
    install_files \
        "/usr/lib/systemd/system/initrd-confext.service" \
        "/usr/lib/systemd/system/initrd-migrate-confext.service" \
        "/usr/lib/gnomeos/migrate-confext"

    mkdir -p "${root}/usr/lib/systemd/system/initrd-fs.target.wants"

    ln -s ../initrd-confext.service "${root}/usr/lib/systemd/system/initrd.target.wants/initrd-confext.service"
    ln -s ../initrd-migrate-confext.service "${root}/usr/lib/systemd/system/initrd.target.wants/initrd-migrate-confext.service"
}
