kind: meson

sources:
- kind: tar
  url: gnome_downloads:xdg-desktop-portal-gnome/43/xdg-desktop-portal-gnome-43.0.tar.xz
  ref: 0e1867a45bcaa5ddb240a4cfdb22dd055cf87f07210b9e3bb70949f3c7be16a6
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/xdg-desktop-portal.bst
- core/gnome-desktop.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
