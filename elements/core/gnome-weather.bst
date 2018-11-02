kind: autotools
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-weather
  track: master
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
- filename: base/intltool.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-dogtail
