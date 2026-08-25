#!/bin/bash

set -eu

"${CARGO}" build --release --manifest-path "${MANIFEST}"

for output in "${@}"; do
    cp "${CARGO_TARGET_DIR}/release/${output}" "${output}"
done
