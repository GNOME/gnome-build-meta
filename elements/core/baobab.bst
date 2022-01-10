kind: meson
sources:
- kind: tar
  url: gnome_downloads:baobab/42/baobab-42.alpha.tar.xz
  ref: 68e680b5ac7de1d4bf9103e1ee884af575c7618733de695eee418d2110c07a1d
build-depends:
- sdk/appstream-glib.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- sdk/librsvg.bst
- freedesktop-sdk.bst:bootstrap-import.bst
