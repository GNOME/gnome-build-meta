#!/bin/bash

set -eu

: ${BST:=bst}
export BST

: ${REPO_ELEMENT:=vm/repo-devel.bst}
: ${OSTREE_LAYER:=git}

ref="$(${BST} show --format "%{vars}" --deps none "${REPO_ELEMENT}" | sed '/ostree-branch: /{;s///;q;};d')"

if ! [ -d ostree-gpg ]; then
    rm -rf ostree-gpg.tmp
    mkdir ostree-gpg.tmp
    chmod 0700 ostree-gpg.tmp
    cat >ostree-gpg.tmp/key-config <<EOF
Key-Type: DSA
Key-Length: 1024
Subkey-Type: ELG-E
Subkey-Length: 1024
Name-Real: Gnome OS
Expire-Date: 0
%no-protection
%commit
%echo finished
EOF
    gpg --batch --homedir=ostree-gpg.tmp --generate-key ostree-gpg.tmp/key-config
    gpg --homedir=ostree-gpg.tmp -k --with-colons | sed '/^fpr:/q;d' | cut -d: -f10 >ostree-gpg.tmp/default-id
    mv ostree-gpg.tmp ostree-gpg
fi

utils/update-repo.sh \
    --gpg-homedir=ostree-gpg \
    --gpg-sign="$(cat ostree-gpg/default-id)" \
    --collection-id=org.gnome.GnomeOS \
    --target-ref="${ref%-*}-${OSTREE_LAYER}" \
    ostree-repo "${REPO_ELEMENT}" \
    "${ref}"

gpg --homedir=ostree-gpg --export --armor >ostree-repo/key.gpg
