kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-color-manager/3.30/gnome-color-manager-3.30.0.tar.xz
  ref: 90bbb881acccdfa0a9e74c4ac72b4514385048037456923a2db66d3f30c6ab80
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
