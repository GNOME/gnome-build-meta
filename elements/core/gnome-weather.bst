kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-weather/44/gnome-weather-44.rc.tar.xz
  ref: eea761112be598df5bd27d88af5cec9216c588cf0846dc2bd1e8b6f0d4d444f8

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
