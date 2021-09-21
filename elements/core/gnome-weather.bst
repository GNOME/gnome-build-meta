kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-weather/41/gnome-weather-41.0.tar.xz
  ref: e5614eb74297e072960d6447557fa9fbfccf24bfcb314944b6d976640ee62dee
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
- sdk/gtk+-3.bst
- sdk/libhandy.bst
- freedesktop-sdk.bst:bootstrap-import.bst
