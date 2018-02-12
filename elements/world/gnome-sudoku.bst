kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-sudoku
  track: master
depends:
- core-deps/appstream-glib.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/json-glib.bst
- core-deps/libgee.bst
- core-deps/m4-common.bst
- core-deps/yelp-tools.bst
- world/qqwing.bst
- base.bst
