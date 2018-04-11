kind: autotools
sources:
- kind: git
  url: git_gnome_org:libgnome-games-support
  track: master
depends:
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/libgee.bst
- core-deps/vala.bst
- base.bst
