kind: autotools
sources:
- kind: tar
  url: tarballs_needing_help:dmraid-1.0.0.rc16-3.tar.bz2
  base-dir: dmraid/1.0.0.rc16-3/dmraid
depends:
- filename: vm/deploy-tools/lvm2.bst
  junction: freedesktop-sdk.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  make: make -j1
  conf-aux: autoconf
