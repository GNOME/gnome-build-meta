kind: meson
sources:
- kind: git
  url: git_gnome_org:gcab
  track: master
depends:
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/meson.bst
- core-deps/vala.bst
- base.bst
