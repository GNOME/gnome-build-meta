kind: meson

sources:
- kind: git_repo
  url: gnome:xdg-desktop-portal-gnome.git
  track: main
  ref: 50.0-14-g90636fe4289a2940e5320a748e0005a5c8a2f156
# FIXME: should be kept in sync manually until we have a wrap plugin
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
