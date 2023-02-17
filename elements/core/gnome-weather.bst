kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-weather/44/gnome-weather-44.beta.tar.xz
  ref: eaa5fbdce0610cf4d74818ddd63f37c8670c846478ac9b99541d97930efd4bd6
build-depends:
- sdk/appstream-glib.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/libgweather.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/gdk-pixbuf.bst
- sdk/geoclue.bst
- sdk/gjs.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
