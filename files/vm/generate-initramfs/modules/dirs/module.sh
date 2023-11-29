install() {
    # symlinks
    install_files /bin /sbin /usr/sbin /lib
    install_files /dev /tmp /proc /var /run /var/run
    mkdir -p "${root}/sys"
}
