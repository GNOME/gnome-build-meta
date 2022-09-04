kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-weather/43/gnome-weather-43.rc.tar.xz
  ref: f15c8c9f68c06174f1fe7d332230adc3a686bf17bc97772a9609298637d22b33
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
