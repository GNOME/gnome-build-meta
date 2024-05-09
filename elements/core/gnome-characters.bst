kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-characters.git
  track: main
  ref: 46.0-10-g2eba234dbe07f24147d9b435076b4ea246bf475e

build-depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/adwaita-icon-theme.bst
- sdk/gjs.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:bootstrap-import.bst
