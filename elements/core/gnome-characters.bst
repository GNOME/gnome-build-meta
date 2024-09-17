kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-characters/47/gnome-characters-47.0.tar.xz
  ref: 6bcf05a22f30f131d8a8035b0f63d86a9567007a5f6df5ce8556ba06777b7574
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
