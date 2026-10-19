kind: meson

sources:
- kind: git_repo
  url: gnome:libgweather.git
  track: main
  ref: 4.6.0-7-g98fddcd0f5c3b623a68dfbec0bf46d2d562e8ab1

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst

depends:
- core-deps/geocode-glib.bst
- core-deps/gweather-locations.bst
- sdk/glib.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
