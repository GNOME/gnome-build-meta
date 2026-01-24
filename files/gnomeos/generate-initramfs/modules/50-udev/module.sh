install() {
    for rule in /usr/lib/udev/rules.d/*.rules; do
        case "$(basename "${rule}")" in
            *-dm-lvm.rules)
                if [ "${INITRD_MODE-sysupdate}" != sysupdate ]; then
                    install_file "${rule}"
                fi
                ;;
            *)
                install_file "${rule}"
                ;;
        esac
    done
    for command in /usr/lib/udev/*; do
        if ! [ -d "${command}" ] && [ -x "${command}" ]; then
            install_file "${command}"
        fi
    done
    install_file /usr/bin/dmsetup
    if [ "${INITRD_MODE-sysupdate}" != sysupdate ]; then
        # /etc configuration might override "event-activation"
        install_files /usr/bin/lvm /etc/lvm/lvm.conf
    fi
}
