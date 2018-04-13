kind: autotools
sources:
- url: https://download.gnome.org/sources/libsoup/2.62/libsoup-2.62.1.tar.xz
  kind: tar
  ref: f037ddac2e0f9b1c842a0060fa6119bea1d3b349a2c901283c961247e45883d7
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/m4-common.bst
- core-deps/vala.bst
- base.bst
variables:
  conf-local: --disable-tls-check
