kind: meson

sources:
- kind: git_repo
  url: gnome:libgweather.git
  track: main
  ref: 4.6.0-3-g3518a387aa4d2887938dbfd782c3a1749488fdfb

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
