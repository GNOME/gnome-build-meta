kind: meson
sources:
- kind: git_tag
  url: gnome:libgweather.git
  track: main
  ref: 4.3.2-13-g48cd640e7af2209157d00b12a6e01bc6f703e8a2
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- sdk-deps/gi-docgen.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/geocode-glib.bst
- sdk/glib.bst
- sdk/libsoup.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:bootstrap-import.bst
