depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/libpsl.bst
- core-deps/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: autotools
sources:
- kind: tar
  ref: 77b91be36717fb57144aa4222753fa7b7d81312439d59ac47486d675a3deae1a
  url: https://download.gnome.org/sources/libsoup/2.63/libsoup-2.63.90.tar.xz
variables:
  conf-local: --disable-tls-check
