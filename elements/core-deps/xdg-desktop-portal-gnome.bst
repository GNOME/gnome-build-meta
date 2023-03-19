kind: meson

sources:
- kind: tar
  url: gnome_downloads:xdg-desktop-portal-gnome/44/xdg-desktop-portal-gnome-44.0.tar.xz
  ref: 55011e57f64b7caf0837405efa034a336b9e73deb9f84e5c14cc9f7a8e0e7b34
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/xdg-desktop-portal.bst
- core/gnome-desktop.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
