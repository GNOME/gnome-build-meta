#!/bin/bash

set -eu

: ${BST:=bst}
export BST

ref="$(${BST} show --format "%{vars}" --deps none vm/repo.bst | sed '/ostree-branch: /{;s///;q;};d')"

utils/ensure-local-key.sh

utils/update-repo.sh \
    --gpg-homedir=ostree-gpg \
    --collection-id=org.gnome.GnomeOS \
    --target-ref="${ref%/*}/devel" \
    ostree-repo vm/repo.bst \
    "${ref}"

gpg --homedir=ostree-gpg --export --armor >ostree-repo/key.gpg
