kind: autotools
sources:
- kind: tar
  url: ftp_gnu_org:parted/parted-3.4.tar.xz
  ref: e1298022472da5589b7f2be1d5ee3c1b66ec3d96dfbad03dc642afd009da5342
- kind: patch
  path: files/parted/include-sysmacros.patch
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/lvm2.bst
- freedesktop-sdk.bst:components/util-linux.bst
- freedesktop-sdk.bst:bootstrap-import.bst
