kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-sudoku
  track: master
depends:
- core-deps/appstream-glib.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/json-glib.bst
- core-deps/libgee.bst
- core-deps/yelp-tools.bst
- world/qqwing.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
