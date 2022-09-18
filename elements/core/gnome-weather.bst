kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-weather/43/gnome-weather-43.0.tar.xz
  ref: 2f11117f75552bf1bb9e01f01cfb3c2fcda6a3f69070ffe0519a0761532b8f26
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
