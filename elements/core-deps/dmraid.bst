depends:
- core-deps/lvm2.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: autotools
sources:
- base-dir: dmraid/1.0.0.rc16-3/dmraid
  kind: tar
  ref: 93421bd169d71ff5e7d2db95b62b030bfa205a12010b6468dcdef80337d6fbd8
  url: tarballs_needing_help:dmraid-1.0.0.rc16-3.tar.bz2
variables:
  conf-aux: autoconf
  make: make -j1
