#!/bin/bash

set -eu

umask 0077

if [[ "$#" -ge 1 ]]; then
    exec >"${1}"
fi

data="$(dd if=/dev/urandom bs=32 count=1 status=none | basenc --base16 | tr 0-9A-F c-v)"
for ((i=0; $i < 8; i++)); do
    printf '%s' "${data:$(($i*8)):8}"
    if [[ "${i}" -lt 7 ]]; then
        printf '-'
    fi
done
