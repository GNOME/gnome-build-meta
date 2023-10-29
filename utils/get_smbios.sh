#!/bin/bash

set -eu

script_dir="$(dirname $0)"

gen_tmpfiles() {
    # Kept as example if sudo is required in the future.
    sudoers_conf="$(cat "${script_dir}/sudoers.conf" | base64 -w 0)"

    cat <<EOF
f+~ /etc/sudoers.d/wheel 644 root root - ${sudoers_conf}
EOF
}

configs=()

# enable if sudo is needed
if false; then
  tmpfiles_config="$(gen_tmpfiles | base64 -w 0)"
  configs+=("value=io.systemd.credential.binary:tmpfiles.extra=${tmpfiles_config}")
fi

cmdline="console=ttyS0 systemd.journald.forward_to_console=1"
configs+=("value=io.systemd.stub.kernel-cmdline-extra=${cmdline}")

echo "type=11,$(IFS=,; echo "${configs[*]}")"
