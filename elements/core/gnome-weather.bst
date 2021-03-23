kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-weather/40/gnome-weather-40.0.tar.xz
  ref: 2a35a73ab2408762181d8650b037205c17ef7bcb8dff3cf0b34af1a2de66aeef
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/libgweather.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/gdk-pixbuf.bst
- sdk/geoclue.bst
- sdk/gjs.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- freedesktop-sdk.bst:bootstrap-import.bst
