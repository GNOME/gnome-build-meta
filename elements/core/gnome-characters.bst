kind: meson

sources:
- kind: git_tag
  url: gnome:gnome-characters.git
  track: main
  ref: 44.rc-2-g683ff734f8f06653b41968b12b29cb3d067a359e

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
