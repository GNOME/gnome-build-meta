kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/libsigc++/2.99/libsigc++-2.99.11.tar.xz
depends:
- core-deps/mm-common.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
variables:
  conf-local: --disable-documentation
