#!/bin/bash
# Fetch test media from cloud storage.

set -eu

url="$1"
destination="$2"

mkdir -p "$(dirname "$destination")"
curl --fail --get --location "$url" --output "$destination"
