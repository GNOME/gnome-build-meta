kind: meson

sources:
- kind: git_repo
  url: gnome:xdg-desktop-portal-gnome.git
  track: main
  ref: 47.0-22-g4cb1575c3ba9470137271845e2e5f0f5a7d95d7a
- kind: git_repo
  url: gnome:libgxdp.git
  track: main
  directory: subprojects/libgxdp
  ref: 1b8aa4fa79403b467f21fc51e5f61c83f6339fbb
build-depends:
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core/gnome-desktop.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/xdg-desktop-portal.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  # libgxdp tests depend on mutter
  meson-local: >-
    -Dlibgxdp:tests=false
