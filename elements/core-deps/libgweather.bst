kind: meson

sources:
- kind: git_repo
  url: gnome:libgweather.git
  track: main
  ref: 4.4.4-62-g2727ae72813c6cc1b8e3fb0d0916a9432c8e588f

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
