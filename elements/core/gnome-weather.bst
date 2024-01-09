kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-weather/45/gnome-weather-45.0.tar.xz
  ref: 30c0029702883dc8d8160e6de1d6116877cd6c25bc950d4e4902a6ab467b2fa4
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/libgweather.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/gdk-pixbuf.bst
- sdk/gjs.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/geoclue-libs.bst
- freedesktop-sdk.bst:bootstrap-import.bst
