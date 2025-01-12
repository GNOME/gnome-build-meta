kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-weather/48/gnome-weather-48.alpha.tar.xz
  ref: 2db2d9761ad5d2e32cacf9c1cfe3686b2c72f9218bac99d759ad9d887ff0c3bd
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
