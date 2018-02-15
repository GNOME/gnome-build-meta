kind: meson
sources:
- url: https://download.gnome.org/sources/gnome-clocks/3.27/gnome-clocks-3.27.1.tar.xz
  kind: tar
  ref: f6357a9039bb65521b30454d6d45c952072c8a939cc773f0afebd25c9eb9dac8
depends:
- core-deps/geoclue.bst
- core-deps/geocode-glib.bst
- core-deps/gsound.bst
- core-deps/gtk+-3.bst
- core-deps/libgweather.bst
- core-deps/meson.bst
- core-deps/vala.bst
- core-deps/yelp-tools.bst
- core/gnome-desktop.bst
- base.bst
