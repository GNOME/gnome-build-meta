kind: autotools
sources:
- kind: git
  url: git_gnome_org:libnotify
  track: master
depends:
- core-deps/glib.bst
- core-deps/gnome-common.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk+-3.bst
- base.bst
