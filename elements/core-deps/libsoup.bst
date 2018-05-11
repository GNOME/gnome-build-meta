kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/libsoup/2.62/libsoup-2.62.2.tar.xz
  ref: 9e536fe3da60b25d2c63addb84a9d5072d00b0d8b8cbeabc629a6bcd63f879b6
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/m4-common.bst
- core-deps/vala.bst
- base.bst
variables:
  conf-local: --disable-tls-check
