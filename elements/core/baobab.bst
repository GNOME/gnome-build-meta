kind: meson
sources:
- kind: tar
  url: gnome_downloads:baobab/43/baobab-43.0.tar.xz
  ref: 52c6864118f5697f5a5736882dcda27db22e7220bc492838deecc699246cdb26
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
