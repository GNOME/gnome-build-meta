kind: autotools
sources:
- kind: git
  url: git_gnome_org:atk
  track: master
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk-doc.bst
- core-deps/meson.bst
- base.bst
