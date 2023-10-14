#!/bin/bash

set -eu

script_dir="$(dirname $0)"

journald_conf="$(cat "${script_dir}/journald.conf" | base64 -w 0)"
# TODO: get rid of sudoers. The problem is we need to restart journald
# after journald.conf is provided.
sudoers_conf="$(cat "${script_dir}/sudoers.conf" | base64 -w 0)"

gen_tmpfiles() {
    cat <<EOF
f+~ /etc/systemd/journald.conf 644 root root - ${journald_conf}
f+~ /etc/sudoers.d/wheel 644 root root - ${sudoers_conf}
EOF
}

tmpfiles_config="$(gen_tmpfiles | base64 -w 0)"

echo "type=11,value=io.systemd.credential.binary:tmpfiles.extra=${tmpfiles_config}"
