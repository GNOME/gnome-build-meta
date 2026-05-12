kind: meson

sources:
- kind: tar
  url: gnome_downloads:xdg-desktop-portal-gnome/50/xdg-desktop-portal-gnome-50.0.tar.xz
  ref: ceeef2fb68b34b3f66a3def0a332a22a70af272641fb6c50065b7a2fde3d5759
- kind: git_repo
  url: gnome:libgxdp.git
  directory: subprojects/libgxdp
  track: main
  ref: 1fe6de799f39b3126e8d0db66fa4f16c10fd9bd6

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
