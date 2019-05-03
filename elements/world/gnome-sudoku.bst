kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-sudoku.git
  track: master
depends:
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- sdk/libgee.bst
- world/qqwing.bst
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
- filename: components/itstools.bst
  junction: freedesktop-sdk.bst
