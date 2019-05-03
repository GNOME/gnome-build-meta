kind: autotools
sources:
- kind: tar
  url: github_com:libfuse/libfuse/releases/download/fuse-2.9.7/fuse-2.9.7.tar.gz
- kind: patch
  path: files/fuse/fuse-kernel-h-clean-includes.patch
depends:
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
environment:
  MOUNT_FUSE_PATH: '%{sbindir}'
