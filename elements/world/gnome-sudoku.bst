kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-sudoku
  track: master
depends:
- core-deps/libgee.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- world/qqwing.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
- filename: desktop/itstools.bst
  junction: freedesktop-sdk.bst
