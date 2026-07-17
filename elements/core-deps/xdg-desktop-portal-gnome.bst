kind: meson

sources:
- kind: git_repo
  url: gnome:xdg-desktop-portal-gnome.git
  track: main
  ref: 51.alpha-4-g6e72e4557ed60767a33e983ba4f3e356ea2a4d84
# FIXME: should be kept in sync manually until we have a wrap plugin
- kind: git_repo
  url: gnome:libgxdp.git
  directory: subprojects/libgxdp
  ref: df896e3412b749947bc6f62a91a1aac8e6b6d19b

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- freedesktop-sdk.bst:components/systemd.bst

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
