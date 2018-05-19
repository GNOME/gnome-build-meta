kind: meson
sources:
- kind: git
  url: git_gnome_org:gnome-sudoku
  track: master
depends:
- core-deps/libgee.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- sdk/yelp-tools.bst
- world/qqwing.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
