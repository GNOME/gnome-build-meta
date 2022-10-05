check() {
    return 0
}

depends() {
    echo systemd
}

install() {
    dracut_install sfdisk
    dracut_install sed
    dracut_install grep
    dracut_install udevadm

    inst_script "$moddir/repair-mbr.sh" /bin/repair-mbr
    inst_simple "$moddir/repair-mbr.service" \
		"$systemdsystemunitdir/repair-mbr.service"
    mkdir -p "${initdir}/$systemdsystemunitdir/initrd.target.wants"
    ln_r "$systemdsystemunitdir/repair-mbr.service" \
	 "$systemdsystemunitdir/initrd.target.wants/repair-mbr.service"
}
