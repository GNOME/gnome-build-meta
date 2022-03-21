kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-font-viewer/42/gnome-font-viewer-42.0.tar.xz
  ref: cfa2b8dfff21a105a1a021dadfa213f13627e6a179a77c7b59fdcedaca848dcc
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
