kind: meson

sources:
- kind: git_repo
  url: gnome:baobab.git
  track: main
  ref: 47.0-3-gd7a4ad4d6c065a84b07bed1b09df3b494d98314a

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
