kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-font-viewer/42/gnome-font-viewer-42.rc.tar.xz
  ref: c13537e1af8267e3e99f39355b28a22baf64ad2fda5a01aaa71de46aa7896fe8
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
