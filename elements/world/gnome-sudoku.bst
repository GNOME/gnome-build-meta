kind: meson
sources:
- kind: git
  url: git_gnome_org:gnome-sudoku
  track: master
depends:
- core-deps/libgee.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- sdk/yelp-tools.bst
- world/qqwing.bst
- base.bst
