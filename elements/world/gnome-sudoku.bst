kind: meson
sources:
- kind: git
  url: git_gnome_org:gnome-sudoku
  track: master
depends:
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- core-deps/libgee.bst
- sdk/yelp-tools.bst
- world/qqwing.bst
- base.bst
