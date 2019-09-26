kind: autotools
sources:
- kind: tar
  url: tarballs_needing_help:dmraid-1.0.0.rc16-3.tar.bz2
  base-dir: dmraid/1.0.0.rc16-3/dmraid
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/lvm2.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  make: make -j1
  conf-aux: autoconf
