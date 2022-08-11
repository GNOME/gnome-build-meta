kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-weather/43/gnome-weather-43.beta.tar.xz
  ref: f9d3c401328e0dd64156f777cd876a73e7aee5109ddb63673d03081aaaf807e1
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
