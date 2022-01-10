kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-weather/42/gnome-weather-42.alpha.tar.xz
  ref: dda229f73210fc7b9c88cbc978443b206d1d97735fcdd2e48887f67d818dde41
build-depends:
- sdk/appstream-glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/libgweather-3.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/gdk-pixbuf.bst
- sdk/geoclue.bst
- sdk/gjs.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- freedesktop-sdk.bst:bootstrap-import.bst
