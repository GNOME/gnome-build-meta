kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/atk/2.29/atk-2.29.1.tar.xz
  ref: 1aa7707c6297c1797fe4d79a22a57ede4d5586b0f7a3b30e886d7ca9d75f20da
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk-doc.bst
- core-deps/meson.bst
- base.bst
