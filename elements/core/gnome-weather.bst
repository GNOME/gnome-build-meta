kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-weather/42/gnome-weather-42.0.tar.xz
  ref: 579ee691d853e5bb3ff50e8c7b43f85ae9dd7e5b3a649e02c254a2d9b807b465
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
