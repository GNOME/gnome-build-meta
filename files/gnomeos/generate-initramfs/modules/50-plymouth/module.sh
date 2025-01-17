UNITS=(
    plymouth-halt.service
    plymouth-kexec.service
    plymouth-poweroff.service
    plymouth-quit.service
    plymouth-quit-wait.service
    plymouth-reboot.service
    plymouth-start.service
    plymouth-switch-root.service
    systemd-ask-password-plymouth.path
    systemd-ask-password-plymouth.service
    kexec.target.wants/plymouth-switch-root-initramfs.service
    halt.target.wants/plymouth-switch-root-initramfs.service
    poweroff.target.wants/plymouth-switch-root-initramfs.service
    reboot.target.wants/plymouth-switch-root-initramfs.service
    halt.target.wants/plymouth-halt.service
    initrd-switch-root.target.wants/plymouth-start.service
    initrd-switch-root.target.wants/plymouth-switch-root.service
    kexec.target.wants/plymouth-kexec.service
    multi-user.target.wants/plymouth-quit.service
    multi-user.target.wants/plymouth-quit-wait.service
    poweroff.target.wants/plymouth-poweroff.service
    reboot.target.wants/plymouth-reboot.service
    sysinit.target.wants/plymouth-start.service
)

install() {
    system=/usr/lib/systemd/system

    install_files                               \
        /usr/bin/plymouth                       \
        /usr/bin/plymouthd                      \
        /usr/bin/plymouth-set-default-theme

    install_file /usr/share/plymouth/plymouthd.defaults
    install_file /usr/share/plymouth/themes/bgrt/bgrt.plymouth
    install_file /usr/lib/${multiarch}/plymouth/two-step.so
    install_file /usr/lib/${multiarch}/plymouth/label-pango.so
    install_file /usr/lib/${multiarch}/plymouth/renderers/drm.so
    install_file /usr/lib/${multiarch}/plymouth/renderers/frame-buffer.so
    install_files /usr/share/plymouth/themes/spinner/*.png
    install_file /usr/share/fonts/cantarell/Cantarell-VF.otf

    for unit in "${UNITS[@]}"; do
        install_file "${system}/${unit}"
    done
}
