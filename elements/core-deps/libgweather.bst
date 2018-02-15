kind: meson
sources:
- url: https://download.gnome.org/sources/libgweather/3.27/libgweather-3.27.4.tar.xz
  kind: tar
  ref: ea728b99c176b69a0931b29245fc0e412680396346f36d0631de6f7d36b33d19
depends:
- core-deps/geocode-glib.bst
- core-deps/glib.bst
- core-deps/gtk+-3.bst
- core-deps/libsoup.bst
- core-deps/meson.bst
- base.bst
