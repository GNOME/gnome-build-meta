kind: meson
sources:
- kind: tar
  url: https://download.gnome.org/sources/libgweather/3.28/libgweather-3.28.1.tar.xz
  ref: 157a8388532a751b36befff424b11ed913b2c43689b62cd2060f6847eb730be3
depends:
- core-deps/geocode-glib.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/libsoup.bst
- core-deps/meson.bst
- base.bst
