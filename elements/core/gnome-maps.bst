kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-maps/43/gnome-maps-43.alpha.tar.xz
  ref: c0513d83cb6b989e47159cf89c72e7b0881e8da9e5ea47c8d7e7362d8eae1390
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
runtime-depends:
- sdk/adwaita-icon-theme.bst
- sdk/glib-networking.bst
- sdk/librsvg.bst
depends:
- core-deps/libshumate.bst
- core-deps/libgweather.bst
- core-deps/librest.bst
- sdk/geoclue.bst
- sdk/gjs.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
