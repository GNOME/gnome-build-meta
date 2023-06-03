#!/bin/bash

set -eu

args=()

while [ $# -gt 0 ]; do
    case "$1" in
        --same-version)
            same_version=1
            ;;
        *)
            args+=("$1")
            ;;
    esac
    shift
done

if [ "${#args[@]}" -gt 0 ]; then
    echo "Parameter unexpected" 1>&2
    exit 1
fi

: ${BST:=bst}
: ${REPO_STATE:="${PWD}/secure-vm-repo"}
: ${PORT:=8080}

[ -d "${REPO_STATE}" ] || mkdir -p "${REPO_STATE}"

if [ "${same_version+set}" != set ]; then
    if [ -f "${REPO_STATE}/next_version" ]; then
        version="$(cat "${REPO_STATE}/next_version")"
    else
        version=1
    fi

    next_version="$((${version}+1))"
    echo "${next_version}" >"${REPO_STATE}/next_version"

    sed -i "s/image-version: .*/image-version: 'l.${version}'/" project.conf
fi

checkout="$(mktemp -d --tmpdir="${REPO_STATE}" checkout.XXXXXXXXXX)"
clean_checkout() {
    rm -rf "${checkout}"
}
trap clean_checkout EXIT

"${BST}" build vm-secure/update-images.bst
"${BST}" artifact checkout vm-secure/update-images.bst --directory "${checkout}"

if type -p caddy > /dev/null; then
    if caddy -version > /dev/null; then
        echo "Found caddy v1"
        exec caddy -port "${PORT}" -root "${checkout}"
    else
        echo "Found caddy v2"
        exec caddy file-server --listen ":${PORT}" --root "${checkout}"
    fi
elif type -p webfsd > /dev/null; then
    echo "Found webfsd"
    exec webfsd -F -l - -p "${PORT}" -r "${checkout}"
else
    echo "Running using python web server, please install caddy or webfs instead."
    exec python3 -m http.server "${PORT}" --directory "${checkout}"
fi
