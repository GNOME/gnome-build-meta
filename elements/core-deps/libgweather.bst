kind: meson
sources:
- kind: git_tag
  url: gnome:libgweather.git
  track: main
  ref: 4.2.0-19-gacdb34ee4af76c05ec505398919d6f0a7fd99ea5
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
