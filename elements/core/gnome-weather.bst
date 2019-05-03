kind: meson
sources:
- kind: git
  url: gitlab_gnome_org:GNOME/gnome-weather.git
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
- core/gnome-desktop.bst
- filename: base/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
