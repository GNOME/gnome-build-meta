kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-font-viewer/49/gnome-font-viewer-49.0.tar.xz
  ref: 7c018925c285771b55d7d1a6f15711c0c193d7450ed9871e20d44f2548562404
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
