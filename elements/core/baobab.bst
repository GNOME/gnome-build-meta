kind: meson
sources:
- kind: tar
  url: gnome_downloads:baobab/43/baobab-43.beta.tar.xz
  ref: 978fa9a577f58d2af39dc8104a1c68c9f46fa14553cf2f1ec78736d07d59395c
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
