depends:
- core-deps/mm-common.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: autotools
sources:
- kind: tar
  ref: f843d6346260bfcb4426259e314512b99e296e8ca241d771d21ac64f28298d81
  url: https://download.gnome.org/sources/libsigc++/2.10/libsigc++-2.10.0.tar.xz
variables:
  conf-local: --disable-documentation
