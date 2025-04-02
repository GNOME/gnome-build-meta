#! /bin/bash

set -euox pipefail

pipeline_id="$1"

echo "nightly/$pipeline_id/gnome_os_installer_$pipeline_id.iso" > latest-iso
echo "nightly/$pipeline_id/disk_$pipeline_id-x86_64.img.xz" > latest-x86_64-disk
echo "nightly/$pipeline_id/disk_$pipeline_id-aarch64.img.xz" > latest-aarch64-disk
echo "nightly/$pipeline_id/live_$pipeline_id-x86_64.img.xz" > latest-x86_64-live

aws s3 cp --acl public-read latest-iso s3://gnome-build-meta/latest-iso
aws s3 cp --acl public-read latest-x86_64-disk s3://gnome-build-meta/latest-x86_64-disk
aws s3 cp --acl public-read latest-aarch64-disk s3://gnome-build-meta/latest-aarch64-disk
aws s3 cp --acl public-read latest-x86_64-live s3://gnome-build-meta/latest-x86_64-live

rm -v latest-iso latest-x86_64-disk latest-aarch64-disk latest-x86_64-live
