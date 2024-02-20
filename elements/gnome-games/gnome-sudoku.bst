kind: meson
sources:
- kind: git_repo
  url: gnome:gnome-sudoku.git
  track: master

  ref: 46.beta-4-g01144214a8423e8c62f4c02764d7991008919c31
build-depends:
- sdk/appstream-glib.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/json-glib.bst
- sdk/libgee.bst
- gnome-games/qqwing.bst
- freedesktop-sdk.bst:bootstrap-import.bst
