kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/libsoup/2.63/libsoup-2.63.2.tar.xz
  ref: 3931f8ae282f010fa0d6c31841751d7c4bff72f116d13f34a5bf98a96550a4f9
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/libpsl.bst
- core-deps/vala.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-tls-check
