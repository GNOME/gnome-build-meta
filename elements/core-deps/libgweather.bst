kind: meson

sources:
- kind: tar
  url: gnome_downloads:libgweather/4.5/libgweather-4.5.0.tar.xz
  ref: e464c1aebe8117c8a170206d7baefe730393b7e98044c2cd97b3aa8604ef12aa
build-depends:
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/geocode-glib.bst
- core-deps/gweather-locations.bst
- sdk/glib.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
