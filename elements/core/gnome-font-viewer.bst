kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-font-viewer/46/gnome-font-viewer-46.0.tar.xz
  ref: 592f401e485d02cc044d487bb5c8e04c961da6856216768a59f1ff98bd2d537c
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
