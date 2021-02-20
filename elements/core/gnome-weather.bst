kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-weather/40/gnome-weather-40.beta.tar.xz
  ref: 5aaeb29082c26f882a958c83cee5da8294db5c24bd335af3c1301699e75fe781
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
- sdk/libhandy.bst
- freedesktop-sdk.bst:bootstrap-import.bst
