kind: meson

sources:
- kind: tar
  url: gnome_downloads:xdg-desktop-portal-gnome/44/xdg-desktop-portal-gnome-44.2.tar.xz
  ref: 50ed1aac290303ea0bc5c840a9c1165918546ab4a73a24c52dcaa27072b5ff21
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/xdg-desktop-portal.bst
- core/gnome-desktop.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
