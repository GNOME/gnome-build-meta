kind: meson
sources:
- kind: git_tag
  url: gitlab_gnome_org:GNOME/gnome-sudoku.git
  track: master
depends:
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- sdk/libgee.bst
- world/qqwing.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:bootstrap-import.bst
