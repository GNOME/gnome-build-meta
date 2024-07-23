kind: meson

sources:
- kind: git_repo
  url: gnome:baobab.git
  track: main
  ref: 47.alpha-4-gd038826fc25f8ea6dfb865a34fee33a85146a7a8

build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
