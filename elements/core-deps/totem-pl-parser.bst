kind: meson
sources:
- kind: git
  url: git_gnome_org:totem-pl-parser
  track: master
depends:
- sdk/glib.bst
- core-deps/gmime3.bst
- sdk/gobject-introspection.bst
- base.bst
