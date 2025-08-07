kind: meson

sources:
- kind: tar
  url: gnome_downloads:xdg-desktop-portal-gnome/49/xdg-desktop-portal-gnome-49.alpha.tar.xz
  ref: 8e12a79b687fd89ec42cdbf5e4f06ae66fbfeb754ae1d5591f9c310589547d96

build-depends:
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core/gnome-desktop.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/xdg-desktop-portal.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  # libgxdp tests depend on mutter
  meson-local: >-
    -Dlibgxdp:tests=false
