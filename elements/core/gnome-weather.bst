kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-weather
  track: master
depends:
- core-deps/appstream-glib.bst
- core-deps/gdk-pixbuf.bst
- core-deps/geoclue.bst
- core-deps/gjs.bst
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk+-3.bst
- core-deps/libgweather.bst
- core/adwaita-icon-theme.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-dogtail
