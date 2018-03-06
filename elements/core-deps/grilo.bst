kind: autotools
sources:
- kind: git
  url: git_gnome_org:grilo
  track: master
depends:
- core-deps/glib.bst
- core-deps/gnome-common.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk+-3.bst
- core-deps/libsoup.bst
- core-deps/totem-pl-parser.bst
- core-deps/vala.bst
- base.bst
