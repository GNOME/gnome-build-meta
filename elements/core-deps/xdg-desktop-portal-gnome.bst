kind: meson

sources:
- kind: git_repo
  url: gnome:xdg-desktop-portal-gnome.git
  track: main
  ref: 47.0-19-g6c89f8264847b2660e4e708364699ae673d6759f
- kind: git_repo
  url: gnome:libgxdp.git
  track: main
  directory: subprojects/libgxdp
  ref: 2fc07465521a537d34a577b0dbefa5259ad8df6c
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
