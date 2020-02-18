kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-weather/3.34/gnome-weather-3.34.0.tar.xz
  ref: 24867e21fcb92b81cd0cf09bbf8bc216ccc55d9a66ac21928b66c413f4efc3bc
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
