kind: meson
sources:
- kind: git
  url: git_gnome_org:pango
  track: master
depends:
- core-deps/fribidi.bst
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk-doc.bst
- core-deps/harfbuzz.bst
- core-deps/meson.bst
- base.bst
