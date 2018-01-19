kind: meson
sources:
- kind: git
  url: git_gnome_org:totem-pl-parser
  track: master
depends:
- core-deps/glib.bst
- core-deps/gmime3.bst
- core-deps/gobject-introspection.bst
- core-deps/meson.bst
- base.bst
