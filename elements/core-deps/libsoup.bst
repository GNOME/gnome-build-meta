kind: autotools
sources:
- kind: git
  url: git_gnome_org:libsoup
  track: master
depends:
- core-deps/glib.bst
- core-deps/glib-networking.bst
- core-deps/gobject-introspection.bst
- core-deps/m4-common.bst
- core-deps/vala.bst
- base.bst
