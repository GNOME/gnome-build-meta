kind: meson

sources:
- kind: git_repo
  url: gnome:baobab.git
  track: main
  ref: 49.1-33-g757ebaf18897338a1141d2b28639dc3e44bfd31e

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
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
