kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/glibmm/2.56/glibmm-2.56.0.tar.xz
  ref: 6e74fcba0d245451c58fc8a196e9d103789bc510e1eee1a9b1e816c5209e79a9
depends:
- core-deps/libsigcplusplus-2.0.bst
- sdk/glib.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --enable-maintainer-mode
