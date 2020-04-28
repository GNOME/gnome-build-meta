kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-weather/3.34/gnome-weather-3.34.2.tar.xz
  ref: f0ad43177cb0b3bf30b27a67ef96cf1a98b3a615061c28dcb8f79dc354f9f3d8
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
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
