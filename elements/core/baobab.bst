kind: meson

sources:
- kind: tar
  url: gnome_downloads:baobab/47/baobab-47.0.tar.xz
  ref: b88f74f9c052d3c2388f7062d228cf5e927545acf7408c56841df80ccd1f9c37
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
