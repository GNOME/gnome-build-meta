kind: autotools
sources:
- kind: tar
  url: tarballs_needing_help:dmraid-1.0.0.rc16-3.tar.bz2
  base-dir: dmraid/1.0.0.rc16-3/dmraid
  ref: 93421bd169d71ff5e7d2db95b62b030bfa205a12010b6468dcdef80337d6fbd8
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
