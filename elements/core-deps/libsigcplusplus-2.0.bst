kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/libsigc++/2.10/libsigc++-2.10.1.tar.xz
  ref: c9a25f26178c6cbb147f9904d8c533b5a5c5111a41ac2eb781eb734eea446003
depends:
- core-deps/mm-common.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-documentation
