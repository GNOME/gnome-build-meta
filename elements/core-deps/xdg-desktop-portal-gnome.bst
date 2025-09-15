kind: meson

sources:
- kind: tar
  url: gnome_downloads:xdg-desktop-portal-gnome/49/xdg-desktop-portal-gnome-49.0.tar.xz
  ref: 401dafcdf8cb911f09c08d2813f774dd864127abfca93ff4caf1fc4c9b5ec4d2

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
