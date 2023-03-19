kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-weather/44/gnome-weather-44.0.tar.xz
  ref: 6b0d38ac785041699df628926e35db7b5ffa086ee0d6934c222a19c6b9923baf

build-depends:
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
