#!/bin/bash

set -eu

args=()

while [ $# -gt 0 ]; do
    case "$1" in
        --same-version)
            same_version=1
            ;;
        --user)
            user=1
            ;;
        --devel)
            devel=1
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

if [ "${user+set}" != set ] && [ "${devel+set}" != set ]; then
    user=1
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

to_build=()
if [ "${user+set}" = set ]; then
    to_build+=(vm-secure/update-images.bst)
fi
if [ "${devel+set}" = set ]; then
    to_build+=(vm-secure/update-images-devel.bst)
fi
"${BST}" build "${to_build[@]}"

if [ "${user+set}" = set ]; then
    "${BST}" artifact checkout vm-secure/update-images.bst --directory "${checkout}/su-user"
    gpg --homedir=files/boot-keys/private-key --output  "${checkout}/su-user/SHA256SUMS.gpg" --detach-sig "${checkout}/su-user/SHA256SUMS"
fi
if [ "${devel+set}" = set ]; then
    "${BST}" artifact checkout vm-secure/update-images-devel.bst --directory "${checkout}/su-devel"
    gpg --homedir=files/boot-keys/private-key --output "${checkout}/su-devel/SHA256SUMS.gpg" --detach-sig "${checkout}/su-devel/SHA256SUMS"
fi

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
