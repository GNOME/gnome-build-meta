kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-characters/48/gnome-characters-48.0.tar.xz
  ref: a2c32ca54d911db2404420350d3442e691a2dce8b0f5d00899f66cff8c3c8d71
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
