kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/glibmm/2.56/glibmm-2.56.1.tar.xz
  ref: dac6872058adde263b7eb0bef07263ba65abb5abc7fd4ca337e81cc5d5f9ca87
depends:
- core-deps/libsigcplusplus-2.0.bst
- sdk/glib.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-maintainer-mode
