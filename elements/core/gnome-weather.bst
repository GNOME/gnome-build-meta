kind: autotools
sources:
- kind: git
  url: git_gnome_org:gnome-weather
  track: master
depends:
- sdk/gdk-pixbuf.bst
- sdk/gjs.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- core-deps/libgweather.bst
- sdk/adwaita-icon-theme.bst
- base.bst
variables:
  conf-local: --disable-dogtail
