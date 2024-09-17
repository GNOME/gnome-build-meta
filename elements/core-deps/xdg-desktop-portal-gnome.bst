kind: meson

sources:
- kind: tar
  url: gnome_downloads:xdg-desktop-portal-gnome/47/xdg-desktop-portal-gnome-47.0.tar.xz
  ref: 89f81961442db64eaf1443e7359fa55a26193fd44abca68e82a1a570a3967765
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
