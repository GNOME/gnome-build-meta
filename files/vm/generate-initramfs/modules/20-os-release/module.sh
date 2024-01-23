install() {
    install_file_at_path /usr/lib/os-release /usr/lib/initrd-release
    ln -s initrd-release "${root}/usr/lib/os-release"
    install_file /etc
    ln -s initrd-release "${root}/etc/os-release"
    ln -s /usr/lib/initrd-release "${root}/etc/initrd-release"
}
