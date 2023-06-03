#!/bin/bash

check() {
    return 255
}

depends() {
    echo systemd-repart
    return 0
}

install() {
    inst_simple "${moddir}/gnomeos.conf" "${systemdsystemunitdir}/systemd-repart.service.d/gnomeos.conf"

    inst_simple "${moddir}/disable-encryption.service" "${systemdsystemunitdir}/disable-encryption.service"
    inst_simple "${moddir}/enable-encryption.service" "${systemdsystemunitdir}/enable-encryption.service"
    ${SYSTEMCTL} -q --root "${initdir}" enable disable-encryption.service
    ${SYSTEMCTL} -q --root "${initdir}" enable enable-encryption.service
}
