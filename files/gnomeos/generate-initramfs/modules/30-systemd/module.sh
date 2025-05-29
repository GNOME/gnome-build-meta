BINARIES=(
    journalctl
    loginctl
    poweroff
    reboot
    systemctl
    systemd-ask-password
    systemd-cgls
    systemd-escape
    systemd-repart
    systemd-run
    systemd-sysusers
    systemd-tmpfiles
    systemd-tty-ask-password-agent
    udevadm
    halt
    loadkeys
)

FILES=(
    /usr/lib/systemd/systemd-executor
    /usr/lib/systemd/system-generators/systemd-gpt-auto-generator
    /usr/lib/systemd/system-generators/systemd-veritysetup-generator
    /usr/lib/systemd/system-generators/systemd-cryptsetup-generator
    /usr/lib/systemd/system-generators/systemd-integritysetup-generator
    /usr/lib/systemd/system-generators/systemd-fstab-generator
    /usr/lib/systemd/system-generators/systemd-hibernate-resume-generator
    /usr/lib/systemd/system-generators/systemd-debug-generator
    /usr/lib/systemd/system-generators/systemd-tpm2-generator
    /usr/lib/systemd/systemd-veritysetup
    /usr/lib/systemd/systemd-integritysetup
    /usr/lib/systemd/systemd-cryptsetup
    /usr/lib/systemd/systemd-shutdown
)

UNITS=(
    systemd-battery-check.service
    initrd.target.wants/systemd-battery-check.service
    systemd-volatile-root.service
)

UNITS+=(
    initrd-cleanup.service
    initrd-fs.target
    initrd-parse-etc.service
    initrd-root-device.target
    initrd-root-fs.target
    initrd-switch-root.service
    initrd-switch-root.target
    initrd-udevadm-cleanup-db.service
    initrd-usr-fs.target
    initrd.target
)

UNITS+=(
    basic.target
    cryptsetup-pre.target
    cryptsetup.target
    sysinit.target.wants/cryptsetup.target
    emergency.target
    final.target
    halt.target
    kexec.target
    local-fs-pre.target
    local-fs.target
    network-online.target
    network-pre.target
    network.target
    paths.target
    poweroff.target
    reboot.target
    rescue.target
    shutdown.target
    sigpwr.target
    slices.target
    sockets.target
    swap.target
    sysinit.target
    timers.target
    umount.target
    veritysetup-pre.target
    veritysetup.target
    sysinit.target.wants/veritysetup.target
    tpm2.target
)

UNITS+=(
    systemd-ask-password-console.path
    systemd-ask-password-console.service
    systemd-ask-password-wall.path
    systemd-ask-password-wall.service
    sysinit.target.wants/systemd-ask-password-console.path
)

UNITS+=(
    modprobe@.service
    debug-shell.service
    emergency.service
    systemd-confext.service
    systemd-fsck@.service
    systemd-halt.service
    systemd-journald-audit.socket
    systemd-journald-dev-log.socket
    systemd-journald.service
    systemd-journald.socket
    sockets.target.wants/systemd-journald-dev-log.socket
    sockets.target.wants/systemd-journald.socket
    sysinit.target.wants/systemd-journald.service
    systemd-kexec.service
    systemd-modules-load.service
    sysinit.target.wants/systemd-modules-load.service
    systemd-pcrphase-initrd.service
    initrd.target.wants/systemd-pcrphase-initrd.service
    systemd-poweroff.service
    systemd-repart.service
    systemd-repart.service.d/live.conf
    initrd-root-fs.target.wants/systemd-repart.service
    sysinit.target.wants/systemd-repart.service
    systemd-reboot.service
    systemd-sysctl.service
    sysinit.target.wants/systemd-sysctl.service
    systemd-sysext-initrd.service
    initrd.target.wants/systemd-sysext-initrd.service
    systemd-udevd-control.socket
    systemd-udevd-kernel.socket
    systemd-udevd.service
    systemd-udev-settle.service
    systemd-udev-trigger.service
    sockets.target.wants/systemd-udevd-control.socket
    sockets.target.wants/systemd-udevd-kernel.socket
    sysinit.target.wants/systemd-udevd.service
    sysinit.target.wants/systemd-udev-trigger.service
    systemd-sysusers.service
    sysinit.target.wants/systemd-sysusers.service
    systemd-tmpfiles-setup-dev-early.service
    systemd-tmpfiles-setup-dev.service
    systemd-tmpfiles-setup.service
    sysinit.target.wants/systemd-tmpfiles-setup-dev-early.service
    sysinit.target.wants/systemd-tmpfiles-setup-dev.service
    sysinit.target.wants/systemd-tmpfiles-setup.service
    systemd-vconsole-setup.service
    systemd-volatile-root.service
    systemd-tpm2-setup-early.service
    systemd-tpm2-setup-early.service.d/live.conf
    sysinit.target.wants/systemd-tpm2-setup-early.service
)

install() {
    system=/usr/lib/systemd/system

    for b in "${BINARIES[@]}"; do
        install_file "/usr/bin/${b}"
    done

    install_files "${FILES[@]}"

    for unit in "${UNITS[@]}"; do
        install_file "${system}/${unit}"
    done

    install_file /usr/lib/*/cryptsetup/libcryptsetup-token-systemd-tpm2.so

    install_file /usr/share/keymaps/i386/qwerty/us.map.gz
    install_file /usr/share/keymaps/i386/include/qwerty-layout.inc
    install_file /usr/share/keymaps/i386/include/compose.inc
    install_file /usr/share/keymaps/i386/include/linux-with-alt-and-altgr.inc
    install_file /usr/share/keymaps/i386/include/linux-keys-bare.inc
    install_file /usr/share/keymaps/include/compose.latin1
    install_file /usr/share/keymaps/i386/include/euro1.map.gz

    ln -s initrd.target "${root}${system}/default.target"
    ln -s reboot.target "${root}${system}/ctrl-alt-del.target"

    install_file /etc
    touch "${root}/etc/machine-id"

    install_file /usr/lib/systemd/systemd
    ln -sr "${root}/usr/lib/systemd/systemd" "${root}/init"

    install_files /etc/passwd /etc/group

    install_files /usr/lib/sysusers.d/basic.conf
    install_files /usr/lib/tmpfiles.d/systemd.conf
    install_files /usr/lib/tmpfiles.d/20-systemd-stub.conf
}
