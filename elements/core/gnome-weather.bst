kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-weather/3.36/gnome-weather-3.36.1.tar.xz
  ref: 68e6e646159f31c4525c3a5dd308fc0b88dcfc79b61351e9e930dd6efc2ce787
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
