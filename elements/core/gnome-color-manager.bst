kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-color-manager/3.30/gnome-color-manager-3.30.0.tar.xz
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
