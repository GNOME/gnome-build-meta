kind: autotools
sources:
- kind: git
  url: git_gnome_org:grilo
  track: master
depends:
- sdk/glib.bst
- sdk/gnome-common.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/libsoup.bst
- core-deps/totem-pl-parser.bst
- sdk/vala.bst
- base.bst
