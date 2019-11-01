kind: autotools

sources:
- kind: tar
  url: github_com:libfuse/libfuse/releases/download/fuse-2.9.9/fuse-2.9.9.tar.gz
- kind: patch
  path: files/fuse/fuse-kernel-h-clean-includes.patch

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

environment:
  MOUNT_FUSE_PATH: '%{sbindir}'
