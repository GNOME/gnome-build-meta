kind: meson

sources:
- kind: tar
  url: gnome_downloads:gnome-maps/47/gnome-maps-47.6.tar.xz
  ref: ab394f693623c102cfde14060264d1bbe04d41bd7159201dc51dbd93e72c09ac
build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

runtime-depends:
- sdk/adwaita-icon-theme.bst
- sdk/glib-networking.bst
- sdk/librsvg.bst

depends:
- core-deps/libgweather.bst
- core-deps/libportal.bst
- core-deps/librest.bst
- core-deps/libshumate.bst
- sdk/gjs.bst
- sdk/glib.bst
- sdk/gobject-introspection.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:components/geoclue.bst
- freedesktop-sdk.bst:bootstrap-import.bst
