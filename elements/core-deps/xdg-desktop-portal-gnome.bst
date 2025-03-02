kind: meson

sources:
- kind: tar
  url: gnome_downloads:xdg-desktop-portal-gnome/48/xdg-desktop-portal-gnome-48.rc.tar.xz
  ref: fe86fea673759e4974b2b10e27f5aa3e568d8ef688f7d7d80cabcab90a869f0b
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
