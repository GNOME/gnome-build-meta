#!/bin/bash

set -eu

args=()

print_help() {
    cat <<EOF
Usage: $@ [OPTIONS] [--]
Build sysupdate images and serve them through a local HTTP server.

Each call will increment the image version, from l.1, l.2, l.3... unless
--same-version was used.

By default, only the kernel and the /usr image will be served. If
--devel option is used, all images will be built and served.

The server will serve on port 8080. To sysupdate to the images,
the sysupdate.d configuration will need to point to the server.
The files /usr/lib/sysupdate.d/*.transfer should copied to /etc/sysupdate.d/
and in section [Source], Path should be modified to point to:
  * http://10.0.2.2:8080/ for VMs run from run-secure-vm.sh
  * http://localhost:8080/ for the host

Local builds will be signed with a different key. Either add
files/boot-keys/import-pubring.gpg to /etc/systemd/import-pubring.gpg
or use --verify=no to systemd-sysupdate. If secure boot is enabled,
also enroll files/boot-keys/VENDOR.der to MOKs with "mokutil
--import".

Options:
  --help                     Print this help message.

  --same-version             Do not bump the version of the image.

  --devel                    Build and serve all images including extensions.
EOF
}

while [ $# -gt 0 ]; do
    case "$1" in
        --help)
            print_help
            exit 0
            ;;
        --same-version)
            same_version=1
            ;;
        --devel)
            devel=1
            ;;
        --)
            shift
            args+=("$@")
            break
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
: ${ARCH:="x86_64"}
: ${REPO_STATE:="${PWD}/secure-vm-repo"}
: ${PORT:=8080}

BST_OPTIONS=()

case "${ARCH}" in
    *)
        BST_OPTIONS+=(-o arch ${ARCH})
    ;;
esac

[ -d "${REPO_STATE}" ] || mkdir -p "${REPO_STATE}"

if [ "${same_version+set}" != set ]; then
    if [ -f "${REPO_STATE}/next_version" ]; then
        version="$(cat "${REPO_STATE}/next_version")"
    else
        version=1
    fi

    next_version="$((${version}+1))"

    sed -i "s/image-version: .*/image-version: 'l.${version}'/" include/image-version.yml
fi

cleanup_dirs=()
cleanup() {
    if [ "${#cleanup_dirs[@]}" -gt 0 ]; then
        rm -rf "${cleanup_dirs[@]}"
    fi
}
trap cleanup EXIT

checkout="$(mktemp -d --tmpdir="${REPO_STATE}" checkout.XXXXXXXXXX)"
cleanup_dirs+=("${checkout}")

if [ "${devel+set}" = set ]; then
    image=(gnomeos/update-images.bst)
else
    image=(gnomeos/update-images-user-only.bst)
fi

"${BST}" "${BST_OPTIONS[@]}" build "${image}"

"${BST}" "${BST_OPTIONS[@]}" artifact checkout "${image}" --directory "${checkout}"
gpg --homedir=files/boot-keys/private-key --output  "${checkout}/SHA256SUMS.gpg" --detach-sig "${checkout}/SHA256SUMS"

if [ "${next_version+set}" = set ]; then
    echo "${next_version}" >"${REPO_STATE}/next_version"
fi

if type -p caddy > /dev/null; then
    if caddy -version > /dev/null; then
        echo "Found caddy v1"
        caddy -port "${PORT}" -root "${checkout}"
    else
        echo "Found caddy v2"
        caddy file-server --listen ":${PORT}" --root "${checkout}"
    fi
elif type -p webfsd > /dev/null; then
    echo "Found webfsd"
    webfsd -F -l - -p "${PORT}" -r "${checkout}"
else
    echo "Running using python web server, please install caddy or webfs instead."
    python3 -m http.server "${PORT}" --directory "${checkout}"
fi
