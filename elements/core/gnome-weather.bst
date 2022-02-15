kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-weather/42/gnome-weather-42.beta.tar.xz
  ref: bde03141b65c4aae2aa1fbce747ef39a402f6ce32b417cf0e1d6170b78f17e1a
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
