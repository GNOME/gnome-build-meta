kind: meson

sources:
- kind: tar
  url: gnome_downloads:xdg-desktop-portal-gnome/49/xdg-desktop-portal-gnome-49.rc.tar.xz
  ref: 260078db67216adc3723783696faedaba87191581d80b4f405f624af016a4dae

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
