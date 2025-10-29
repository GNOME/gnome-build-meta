install() {
    install_files /usr/lib/${multiarch}/libtss2-tcti-device.so.0
    install_files /usr/lib/sysusers.d/tpm2-tss.conf /usr/lib/tmpfiles.d/tpm2-tss-fapi.conf /usr/lib/udev/rules.d/tpm-udev.rules
}
