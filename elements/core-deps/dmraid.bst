kind: autotools
sources:
- kind: tar
  url: tarballs_needing_help:dmraid-1.0.0.rc16-3.tar.bz2
  base-dir: dmraid/1.0.0.rc16-3/dmraid
depends:
- core-deps/lvm2.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  make: make -j1
  conf-aux: autoconf
