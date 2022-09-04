kind: meson
sources:
- kind: tar
  url: gnome_downloads:gnome-maps/43/gnome-maps-43.rc.tar.xz
  ref: 341a92f0e4e8fa539a3a082b7585d803fe0e77b6f2885ef3b6af736712924399
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
