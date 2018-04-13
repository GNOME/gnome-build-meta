kind: autotools
sources:
- url: https://download.gnome.org/sources/gnome-weather/3.26/gnome-weather-3.26.0.tar.xz
  kind: tar
  ref: 965cc0d1b4d4e53c06d494db96f0b124d232af5c0e731ca900edd10f77a74c78
depends:
- core-deps/appstream-glib.bst
- core-deps/gdk-pixbuf.bst
- core-deps/geoclue.bst
- core-deps/gjs.bst
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk+-3.bst
- core-deps/libgweather.bst
- core-deps/m4-common.bst
- core/adwaita-icon-theme.bst
- base.bst
variables:
  conf-local: --disable-dogtail
