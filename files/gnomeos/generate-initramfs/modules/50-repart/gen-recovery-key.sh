#!/bin/bash

set -eu

umask 0077

if [[ "$#" -ge 1 ]]; then
    exec >"${1}"
fi

echo -n "ihavenotsetarecoverykey"
