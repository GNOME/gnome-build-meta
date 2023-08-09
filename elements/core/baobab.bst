kind: meson

sources:
- kind: tar
  url: gnome_downloads:baobab/45/baobab-45.alpha.tar.xz
  ref: d2add48bf79215632db1b91bae56572da686ac3c5d45bd55fe18864f6163f3cf
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
