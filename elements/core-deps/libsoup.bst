kind: autotools
sources:
- url: https://download.gnome.org/sources/libsoup/2.61/libsoup-2.61.90.tar.xz
  kind: tar
  ref: 49deec092f1b9973feec69fda8f36b2514d0b02c5ff1f7481f4542c3425ebfbc
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/m4-common.bst
- core-deps/vala.bst
- base.bst
variables:
  conf-local: --disable-tls-check
