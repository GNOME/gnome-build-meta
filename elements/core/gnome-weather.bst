kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-weather/43/gnome-weather-43.alpha.tar.xz
  ref: d9ef89da8bcc58ef601697099073bcfc36b7f4c32e0dab5627b73e73170b085b
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
