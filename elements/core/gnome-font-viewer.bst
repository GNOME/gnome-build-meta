kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-font-viewer/50/gnome-font-viewer-50.0.tar.xz
  ref: 9564b088c5b150c54e2a3a7bc7014deec6ee551261e98488f891b1f1b8dc6b80
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst

depends:
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
