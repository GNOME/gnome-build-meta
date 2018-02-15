kind: meson
sources:
- url: https://download.gnome.org/sources/gnome-color-manager/3.26/gnome-color-manager-3.26.0.tar.xz
  kind: tar
  ref: 652100e08520338b24218230f0586227879150d7d093ca637fc06130b72171cd
depends:
- core-deps/appstream-glib.bst
- core-deps/colord-gtk.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/meson.bst
- core-deps/vte.bst
- core-deps/yelp-tools.bst
- core/gnome-desktop.bst
- base.bst
