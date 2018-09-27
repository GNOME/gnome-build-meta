kind: autotools
sources:
- kind: tar
  url: https://download.gnome.org/sources/gnome-weather/3.26/gnome-weather-3.26.0.tar.xz
  ref: 965cc0d1b4d4e53c06d494db96f0b124d232af5c0e731ca900edd10f77a74c78
depends:
- core-deps/libgweather.bst
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/gdk-pixbuf.bst
- sdk/geoclue.bst
- sdk/gjs.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-dogtail
