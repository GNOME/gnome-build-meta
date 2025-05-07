#! /bin/bash

set -euox pipefail

pipeline_id="$1"

echo "nightly/$pipeline_id/live_$pipeline_id-x86_64.iso" > latest-iso
echo "nightly/$pipeline_id/live_$pipeline_id-x86_64.iso" > latest-x86_64-live
echo "nightly/$pipeline_id/live_$pipeline_id-aarch64.iso" > latest-aarch64-live

aws s3 cp --acl public-read latest-iso s3://gnome-build-meta/latest-iso
aws s3 cp --acl public-read latest-x86_64-live s3://gnome-build-meta/latest-x86_64-live
aws s3 cp --acl public-read latest-aarch64-live s3://gnome-build-meta/latest-aarch64-live

rm -v latest-iso latest-x86_64-live latest-aarch64-live
