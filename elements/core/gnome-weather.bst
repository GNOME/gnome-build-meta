kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-weather/45/gnome-weather-45.alpha.tar.xz
  ref: acc1d1f2e376e2f5db5dd1d945a4da1658084c507c61725059134b6b7af8f1eb
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/libgweather.bst
- core/gnome-desktop.bst
- sdk/adwaita-icon-theme.bst
- sdk/gdk-pixbuf.bst
- sdk/gjs.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/geoclue.bst
- freedesktop-sdk.bst:bootstrap-import.bst
