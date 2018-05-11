kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/pango/1.42/pango-1.42.1.tar.xz
  ref: 915a6756b298578ff27c7a6393f8c2e62e6e382f9411f2504d7af1a13c7bce32
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk-doc.bst
- core-deps/harfbuzz.bst
- core-deps/meson.bst
- base.bst
