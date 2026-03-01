kind: meson

sources:
- kind: tar
  url: gnome_downloads:xdg-desktop-portal-gnome/50/xdg-desktop-portal-gnome-50.rc.tar.xz
  ref: a6be38338ad510124b475ca68c40f24c93e5c97470a5240e6aff812064c94dee
- kind: git_repo
  url: gnome:libgxdp.git
  directory: subprojects/libgxdp
  track: main
  ref: d5eca997aa2fea5af54fdd286d5c1e1aa7c76389

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
