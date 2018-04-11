kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-weather
  track: master
depends:
- core-deps/gdk-pixbuf.bst
- core-deps/gjs.bst
- core-deps/glib.bst
- core-deps/gobject-introspection.bst
- core-deps/gtk+-3.bst
- core-deps/libgweather.bst
- core/adwaita-icon-theme.bst
- base.bst
variables:
  conf-local: --disable-dogtail
