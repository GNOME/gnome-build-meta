kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-font-viewer/44/gnome-font-viewer-44.0.tar.xz
  ref: a1511df30b228cc2ef1175dd9d2b93438ea912e25913404b263cf3d457bb9f97
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
