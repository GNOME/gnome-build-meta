kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-font-viewer/48/gnome-font-viewer-48.alpha.1.tar.xz
  ref: 8f5ca5213f04393296cfdcf21eebba15ca622f02c1195dcccdbcbb94b45e4f19
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
