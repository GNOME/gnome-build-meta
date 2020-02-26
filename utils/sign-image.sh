#!/bin/bash

set -eu

utils/ensure-local-key.sh
gpg --homedir=ostree-gpg --export --armor >public-key.gpg

: ${BST:=bst}

${BST} build iso/xz-image.bst

checkout="$(mktemp --suffix="-update-repo" -d -p .)"

on_exit() {
    rm -rf "${checkout}"
}
trap on_exit EXIT

${BST} checkout iso/xz-image.bst --hardlinks "${checkout}"

[ -d image-signatures ] || mkdir image-signatures
rm -f image-signatures/*.asc

for img in "${checkout}"/*.img.xz; do
    gpg --batch --yes --homedir=ostree-gpg -sbao \
        "image-signatures/$(basename "${img}.asc")" "${img}"
done
gpg --homedir=ostree-gpg --export --armor >public-key.gpg
