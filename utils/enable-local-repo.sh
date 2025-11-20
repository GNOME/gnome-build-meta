#!/bin/bash

set -eu

print_help() {
    cat <<EOF
Usage: $@ [OPTIONS] [URL]
Set all URLs for GNOME OS sysupdate transfers to a given URL

When no option is given, it is the equivalent of using --local.

This is intended to be used with run-sysupdate-repo.sh.

Options:
  --help                     Print this help message.

  --local                    Use local URL. Automatically set keyring.

  --vm                       Use host URL from a VM.

  --pubring KEYRING          Add keyring to systemd keyring.

  --clean                    Remove configured URL, and return to upstream
                             configuration.
EOF
}

url_vm="http://10.0.2.2:8080"
url_local="http://localhost:8080"

args=()

keys="${XDG_CONFIG_HOME-${HOME}/.config}/bst-configuration/gnomeos-keys"
default_pubring="${keys}/import-pubring.pgp"

local_sysext="${keys}/SYSEXT.crt"
upstream_sysext="$(dirname ${0})/sysext-upstream.crt"

while [ $# -gt 0 ]; do
    case "$1" in
        --help)
            print_help
            exit 0
            ;;
        --clean)
            clean=1
            ;;
        --local)
            url="${url_local}"
            if [ "${pubring+set}" != set ]; then
                pubring="${default_pubring}"
            fi
            set_sysext=1
            ;;
        --vm)
            url="${url_vm}"
            ;;
        --pubring)
            shift
            if [ $# -eq 0 ]; then
                echo "Missing value" >&2
                exit 1
            fi
            pubring="${1}"
            ;;
        --pubring=*)
            pubring="${1#--pubring=}"
            ;;
        --*)
            echo "Unknown option '${1}'" >&2
            exit 1
            ;;
        *)
            if [ "${url+set}" = set ]; then
                echo "URL already set" >&2
                exit 1
            fi
            url="${1}"
            ;;
    esac
    shift
done

import_pubring() {
    tmp=$(mktemp --tmpdir -d "localrepo.XXXXXXXXXX")
    if [ -r /etc/systemd/import-pubring.pgp ]; then
        gpg --homedir="${tmp}" --import </etc/systemd/import-pubring.pgp
    fi
    gpg --homedir="${tmp}" --import </usr/lib/systemd/import-pubring.pgp
    gpg --homedir="${tmp}" --import <"${1}"
    gpg --homedir="${tmp}" --export >/etc/systemd/import-pubring.pgp
    rm -rf "${tmp}"
}

set_url() {
    for t in /usr/lib/sysupdate.d/*-gnomeos-*.transfer; do
        b="$(basename "${t}")"
        mkdir -p "/etc/sysupdate.d/${b}.d"
        cat <<EOF >"/etc/sysupdate.d/${b}.d/local.conf"
[Source]
Path=${1}
EOF
    done
}

clean() {
    rm -f /etc/sysupdate.d/*-gnomeos-*.transfer.d/local.conf
}

if [ "${clean+set}" = set ]; then
    clean
else
    if [ "${url+set}" != set ]; then
        url="${url_local}"
        pubring="${default_pubring}"
        set_sysext=1
    fi
    if [ "${pubring+set}" = set ]; then
        import_pubring "${pubring}"
    fi
    if [ "${set_sysext+set}" = set ]; then
        mkdir -p /etc/verity.d
        cp "${local_sysext}" /etc/verity.d/sysext-local.crt
        cp "${upstream_sysext}" /etc/verity.d/sysext-upstream.crt
    fi
    set_url "${url}"
fi
