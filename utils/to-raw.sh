#!/bin/bash

set -eu

definitions="$(dirname ${0})/repart.raw.d"
ISO="${1}"
OUT="${2}"

systemd-repart --image="${ISO}" --definitions="${definitions}" --empty=create --size=auto "${OUT}"
