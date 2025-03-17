kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-font-viewer/48/gnome-font-viewer-48.0.tar.xz
  ref: 732624231b624ff5c7ac03a8ce71be12393daa53551d11550b20d7b0a3a872a7
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
