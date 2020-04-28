kind: autotools
sources:
- kind: tar
  url: tarballs_needing_help:dmraid-1.0.0.rc16-3.tar.bz2
  base-dir: dmraid/1.0.0.rc16-3/dmraid
  ref: 93421bd169d71ff5e7d2db95b62b030bfa205a12010b6468dcdef80337d6fbd8
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/lvm2.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  make: make -j1
