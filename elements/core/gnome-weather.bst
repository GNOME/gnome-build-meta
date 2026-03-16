kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-weather/50/gnome-weather-50.0.tar.xz
  ref: 57de7578605f91f9ab400551ce7738db7505bc88f42a33c70ce7a70167fdb513
build-depends:
- sdk/gobject-introspection.bst
- core-deps/typescript.bst
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
- freedesktop-sdk.bst:components/geoclue-libs.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
