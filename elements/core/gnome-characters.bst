kind: meson

sources:
- kind: git_tag
  url: gnome:gnome-characters.git
  track: main
  ref: 44.0-6-g68c097711148cd47e8a50dcc3228ff08dbd13e9f

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
