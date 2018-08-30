kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-color-manager/3.28/gnome-color-manager-3.28.0.tar.xz
  ref: ec333a9fa4688b29b0f4b6cabe941f7f40bfe9a1369ba75b7ffc185c8d7a3dd6
depends:
- core-deps/colord-gtk.bst
- core-deps/exiv2.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libcanberra.bst
- sdk/vte.bst
- sdk/yelp-tools.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
