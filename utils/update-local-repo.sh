#!/bin/bash

set -eu

: ${BST:=bst}
REPO_ELEMENTS=''

while [ $# -gt 0 ]; do
    case "$1" in
        --user)
            REPO_ELEMENTS="$REPO_ELEMENTS vm/repo.bst"
            ;;
        --devel)
            REPO_ELEMENTS="$REPO_ELEMENTS vm/repo-devel.bst"
            ;;
        --element=*)
            REPO_ELEMENTS="$REPO_ELEMENTS ${1#--element=}"
            ;;
        --element)
            shift
            REPO_ELEMENTS="$REPO_ELEMENTS ${1}"
            ;;
        --help) ;&
        -h)
            echo "$0 [--user] [--devel] [--element=element.bst]"
            exit 0
            ;;
    esac
    shift
done

test -z "$REPO_ELEMENTS" && REPO_ELEMENTS="vm/repo-devel.bst"


if ! [ -d ostree-gpg ]; then
    rm -rf ostree-gpg.tmp
    mkdir ostree-gpg.tmp
    chmod 0700 ostree-gpg.tmp
    cat >ostree-gpg.tmp/key-config <<EOF
Key-Type: DSA
Key-Length: 1024
Subkey-Type: ELG-E
Subkey-Length: 1024
Name-Real: GNOME OS
Expire-Date: 0
%no-protection
%commit
%echo finished
EOF
    gpg --batch --homedir=ostree-gpg.tmp --generate-key ostree-gpg.tmp/key-config
    gpg --homedir=ostree-gpg.tmp -k --with-colons | sed '/^fpr:/q;d' | cut -d: -f10 >ostree-gpg.tmp/default-id
    mv ostree-gpg.tmp ostree-gpg
fi

test -d ostree-repo || ostree init --repo=ostree-repo --mode=archive
gpg --homedir=ostree-gpg --export --armor >ostree-repo/key.gpg


${BST} build ${REPO_ELEMENTS}


checkout="$(mktemp --suffix="-update-repo" -d -p .)"

on_exit() {
    rm -rf "${checkout}"
}
trap on_exit EXIT

export OSTREE_REPO=ostree-repo

updated_refs=""
for element in ${REPO_ELEMENTS}; do
    ${BST} artifact checkout --hardlinks --directory $checkout/$element $element

    ref=$(ostree refs --repo $checkout/$element)
    commit=$(ostree --repo=$checkout/$element rev-parse $ref)
    prev_commit=$(ostree rev-parse $ref 2>/dev/null || true)

    ostree pull-local $checkout/$element $commit
    ostree commit --branch=$ref --tree=ref=$commit --skip-if-unchanged \
           --gpg-homedir=ostree-gpg --gpg-sign=$(cat ostree-gpg/default-id)

    new_commit=$(ostree rev-parse $ref)
    test -n "$prev_commit" && test "$new_commit" != "$prev_commit" && updated_refs="$updated_refs $ref"
done

ostree prune --refs-only --keep-younger-than="6 months ago"
test -n "${updated_refs}" && ostree static-delta generate ${updated_refs}
ostree summary --update --gpg-homedir=ostree-gpg --gpg-sign="$(cat ostree-gpg/default-id)"
