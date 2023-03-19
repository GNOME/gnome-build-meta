kind: meson

sources:
- kind: tar
  url: gnome_downloads:baobab/44/baobab-44.0.tar.xz
  ref: 845b63bb9123d74568c8126c571bbc74273483ff920179a2cf1eddbbefa1bfc0

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
