kind: meson

sources:
- kind: git_repo
  url: gnome:xdg-desktop-portal-gnome.git
  track: main
  ref: 47.0-15-g01da8ecd55eea0168b76c682686789a2314431da
- kind: git_repo
  url: gnome:libgxdp.git
  track: main
  directory: subprojects/libgxdp
  ref: c7467d3607c811ef1b29c8e91203c20bbff1b2cf
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
