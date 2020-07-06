kind: autotools
sources:
- kind: tar
  url: ftp_gnu_org:parted/parted-3.2.tar.xz
- kind: patch
  path: files/parted/include-sysmacros.patch
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/lvm2.bst
- freedesktop-sdk.bst:components/util-linux.bst
- freedesktop-sdk.bst:bootstrap-import.bst
