#!/bin/bash

check() {
    return 255
}

depends() {
    return 0
}

install() {
    root_device="$(systemd-escape --suffix=device -p /dev/gpt-auto-root)
    inst_simple "${moddir}/disable-timeout.conf" "${systemdsystemunitdir}/${root_device}.d/disable-timeout.conf"
}
