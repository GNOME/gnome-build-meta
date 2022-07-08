kind: meson

sources:
- kind: tar
  url: gnome_downloads:xdg-desktop-portal-gnome/42/xdg-desktop-portal-gnome-42.3.tar.xz
  ref: 4ed105a667e46325467103dc7346d2023faec1d5ec153bd17316da938f53ace0
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/xdg-desktop-portal.bst
- core/gnome-desktop.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
