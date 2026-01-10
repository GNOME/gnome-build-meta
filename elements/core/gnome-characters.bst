kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-characters/50/gnome-characters-50.alpha.tar.xz
  ref: f1d7c611242b82ee716976c17c20d3516d512f23f4b255ca4e27f0decd6849b9
build-depends:
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/adwaita-icon-theme.bst
- sdk/gjs.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
