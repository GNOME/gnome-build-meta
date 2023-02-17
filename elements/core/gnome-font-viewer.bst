kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-font-viewer/44/gnome-font-viewer-44.beta.tar.xz
  ref: d0385bdea8c7f40616c7c172a744a76da69a2a0516b3c96e83a69b739d0897ed
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
