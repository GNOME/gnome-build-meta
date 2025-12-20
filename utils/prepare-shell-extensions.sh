#!/bin/bash

set -eu

print_help() {
    cat <<EOF
Usage: $0 [OPTIONS] [DIRECTORY EXTENSION...]
Prepare a home directory with enabled GNOME Shell extension.

DIRECTORY is the path to the home directory. EXTENSIONs are
path to zip file with the extension.

The extension are not enabled in dconf-profile used by
'utils/run-secure-vm.sh --home' to initialize the dconf configuration.

Options:
  --help                     Print this help message.
EOF
}


args=()

while [ $# -gt 0 ]; do
    case "$1" in
        --help)
            print_help
            exit 0
            ;;
        --)
            shift
            args+=("$@")
            break
            ;;
        --*)
            echo "Unknown option $1" 1>&2
            exit 1
            ;;
        *)
            args+=("$1")
            ;;
    esac
    shift
done

set -- "${args[@]}"
home="$1"
extensions="${home}/.local/share/gnome-shell/extensions"
shift
for extension in "${@}"; do
    mkdir -p "${extensions}/extract"
    unzip -d "${extensions}/extract" "${extension}"
    uuid="$(jq -r .uuid "${extensions}/extract/metadata.json")"
    case "${uuid}" in
        */*)
            echo "invalid extension name" 1>&2
            exit 1
        ;;
    esac
    mv "${extensions}/extract" "${extensions}/${uuid}"
    names="${names-}${names+,}'${uuid}'"
done

cat <<EOF >"$(dirname "${0}")/dconf-profile/enabled-extensions"
[org/gnome/shell]
enabled-extensions=[${names-}]
EOF
