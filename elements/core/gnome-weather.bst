kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-weather/3.36/gnome-weather-3.36.1.tar.xz
  ref: 24867e21fcb92b81cd0cf09bbf8bc216ccc55d9a66ac21928b66c413f4efc3bc
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/libgweather.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/appstream-glib.bst
- sdk/gdk-pixbuf.bst
- sdk/geoclue.bst
- sdk/gjs.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
