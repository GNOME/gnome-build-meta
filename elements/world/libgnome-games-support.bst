kind: autotools
sources:
- kind: git
  url: git_gnome_org:libgnome-games-support
  track: master
depends:
- core-deps/libgee.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/vala.bst
- base.bst
