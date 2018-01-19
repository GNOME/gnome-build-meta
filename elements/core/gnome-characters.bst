kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-characters
  track: master
depends:
- core-deps/appstream-glib.bst
- core-deps/gjs.bst
- core-deps/gtk+-3.bst
- base.bst
