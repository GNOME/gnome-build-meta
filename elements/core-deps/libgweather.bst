kind: meson
sources:
- kind: git_tag
  url: gnome:libgweather.git
  track: main
  ref: 4.3.2-15-g30d2aac71bb2c592ed68a3d68f98689579d27710
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
