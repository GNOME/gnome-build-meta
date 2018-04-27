kind: autotools
sources:
- kind: git
  url: git_gnome_org:libgnome-games-support
  track: master
depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- core-deps/libgee.bst
- sdk/vala.bst
- base.bst
