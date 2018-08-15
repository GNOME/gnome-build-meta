depends:
- core-deps/glib.bst
- core-deps/libsigcplusplus-2.0.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: autotools
sources:
- kind: tar
  ref: 6e74fcba0d245451c58fc8a196e9d103789bc510e1eee1a9b1e816c5209e79a9
  url: https://download.gnome.org/sources/glibmm/2.56/glibmm-2.56.0.tar.xz
variables:
  conf-local: --enable-maintainer-mode
