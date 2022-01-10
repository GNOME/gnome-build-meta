kind: meson

sources:
- kind: tar
  url: gnome_downloads:xdg-desktop-portal-gnome/41/xdg-desktop-portal-gnome-41.1.tar.xz
  ref: bba144199e7ed4b9490b249c1af645a869d62993265deac38f219bf042fffdf2
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/xdg-desktop-portal.bst
- core/gnome-desktop.bst
- sdk/gsettings-desktop-schemas.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
