kind: meson

sources:
- kind: git_repo
  url: gnome:libgweather.git
  track: main
  ref: 4.6.0-4-gfa98aed8752d43f46745fda0c92b8d73d2478944

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
