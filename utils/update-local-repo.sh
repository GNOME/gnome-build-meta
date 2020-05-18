#!/bin/bash

set -eu

: ${BST:=bst}
: ${REPO_ELEMENT:=vm/repo.bst}
: ${OSTREE_REPO:=ostree-repo}

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

checkout="$(mktemp --suffix="-update-repo" -d -p "$(dirname ${OSTREE_REPO})")"

on_exit() {
    rm -rf "${checkout}"
}
trap on_exit EXIT

${BST} build "${REPO_ELEMENT}"
${BST} checkout --hardlinks "${REPO_ELEMENT}" "${checkout}"

if ! [ -d ${OSTREE_REPO} ]; then
    ostree init --repo=${OSTREE_REPO} --mode=archive
fi
gpg --homedir=ostree-gpg --export --armor >ostree-repo/key.gpg

ref="$(ostree --repo="${checkout}" refs)"
flatpak build-commit-from --gpg-homedir=ostree-gpg --gpg-sign="$(cat ostree-gpg/default-id)" \
        --src-ref="${ref}" --src-repo="$checkout" \
        --extra-collection-id=org.gnome.GnomeOS ${OSTREE_REPO} "${ref%/*}/devel"

flatpak build-update-repo --gpg-homedir=ostree-gpg --gpg-sign="$(cat ostree-gpg/default-id)" \
        --prune --generate-static-deltas ${OSTREE_REPO}
