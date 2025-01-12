kind: meson

sources:
- kind: tar
  url: gnome_downloads:baobab/48/baobab-48.alpha.tar.xz
  ref: d961989e229da1164735b9fd3f8a6b7f21f7c56a183cf9954139d67689440f67
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
