kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-color-manager/3.28/gnome-color-manager-3.28.0.tar.xz
  ref: ec333a9fa4688b29b0f4b6cabe941f7f40bfe9a1369ba75b7ffc185c8d7a3dd6
depends:
- core-deps/appstream-glib.bst
- core-deps/colord-gtk.bst
- core-deps/exiv2.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/libcanberra.bst
- core-deps/vte.bst
- core-deps/yelp-tools.bst
- core/adwaita-icon-theme.bst
- core/gnome-desktop.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
