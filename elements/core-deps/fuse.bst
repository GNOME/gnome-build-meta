kind: autotools

sources:
- kind: tar
  url: github_com:libfuse/libfuse/releases/download/fuse-2.9.9/fuse-2.9.9.tar.gz
  ref: d0e69d5d608cc22ff4843791ad097f554dd32540ddc9bed7638cc6fea7c1b4b5
- kind: patch
  path: files/fuse/fuse-kernel-h-clean-includes.patch

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

environment:
  MOUNT_FUSE_PATH: '%{sbindir}'
