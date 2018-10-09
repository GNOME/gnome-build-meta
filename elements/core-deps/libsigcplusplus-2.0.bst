kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/libsigc++/2.10/libsigc++-2.10.0.tar.xz
depends:
- core-deps/mm-common.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-documentation
