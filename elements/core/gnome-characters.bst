kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-characters/45/gnome-characters-45.alpha.tar.xz
  ref: f7beea18d7e77ea7c6841af532c5a6ee78225b4f52f9c7ed40e57de3e9de5a60
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
