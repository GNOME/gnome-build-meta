#!/bin/bash

set -eu

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
    default_key="$(gpg --homedir=ostree-gpg.tmp -k --with-colons | sed '/^fpr:/q;d' | cut -d: -f10)"
    echo "default-key ${default_key}" >ostree-gpg.tmp/gpg.conf
    mv ostree-gpg.tmp ostree-gpg
fi
