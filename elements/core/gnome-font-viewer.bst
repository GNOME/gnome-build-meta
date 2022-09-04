kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-font-viewer/43/gnome-font-viewer-43.rc.tar.xz
  ref: 366ff3f56baa17065677e8f8127984a0b06b4183515eea733b5926f1c3dab831
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
