BINARIES=(
    bash
    blkid
    cat
    chmod
    chown
    cp
    dmesg
    echo
    false
    findmnt
    flock
    grep
    gzip
    less
    ln
    losetup
    ls
    mkdir
    mkfifo
    mknod
    mount
    mv
    nologin
    readlink
    rm
    sed
    setfont
    setsid
    sh
    sleep
    stat
    stty
    sulogin
    timeout
    touch
    tr
    true
    umount
    uname
)

install() {
    for b in "${BINARIES[@]}"; do
        install_file "/usr/bin/${b}"
    done

    # Terminfo is needed by less
    install_files \
        /usr/share/terminfo/l/linux \
        /usr/share/terminfo/v/vt100 \
        /usr/share/terminfo/v/vt102 \
        /usr/share/terminfo/v/vt220
}
