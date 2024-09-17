kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-font-viewer/47/gnome-font-viewer-47.0.tar.xz
  ref: b8e5a042e0b241b0c7cae43f74da0d5f88e6423017a91feb86e7617edb4080ed
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
