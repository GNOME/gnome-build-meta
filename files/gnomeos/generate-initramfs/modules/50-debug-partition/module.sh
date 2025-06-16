install() {
    install_files /usr/lib/systemd/system/dump-journal.service
    install_files /usr/lib/systemd/system/run-gnomeos-debug.mount
    install_files /usr/lib/udev/rules.d/80-debug-partition.rules
}
