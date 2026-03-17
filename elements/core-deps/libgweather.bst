kind: meson

sources:
- kind: git_repo
  url: gnome:libgweather.git
  track: main
  ref: 4.6.0-2-g90b7a4bfe6b6e94d9daba56eabd04fb1888b3952

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
