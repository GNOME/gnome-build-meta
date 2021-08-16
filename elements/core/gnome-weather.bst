kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-weather/40/gnome-weather-40.1.tar.xz
  ref: 3d11144c4797c46d2068c3ddf5ce2bc030fca0f272cf03f218c4f46da3b73c4d
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
