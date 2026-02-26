kind: meson

sources:
- kind: git_repo
  url: gnome:xdg-desktop-portal-gnome.git
  track: main
  ref: 50.beta-9-gcf56f310b2b72f4927626b20516a942a2759d83e
# FIXME: should be kept in sync manually until we have a wrap plugin
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
