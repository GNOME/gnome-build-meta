kind: meson

sources:
- kind: git_repo
  url: gnome:xdg-desktop-portal-gnome.git
  track: main
  ref: 49.0-11-g88d474a4fc7337984b7d44394ad2f6eadf20615a
# needs to be kept in sync manually until we have a wrap plugin
- kind: git_repo
  url: gnome:libgxdp.git
  directory: subprojects/libgxdp
  ref: d45e1c572752604a7a8dd8651657342bb6ac0961

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
