kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-weather/42/gnome-weather-42.rc.tar.xz
  ref: 26723e5a400a322f5d2e57a12156a3ac7a8c037428eaf5a00d965343eac3c684
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
