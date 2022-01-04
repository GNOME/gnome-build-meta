kind: meson
sources:
- kind: git_tag
  url: gnome:libgweather.git
  track: main
build-depends:
- sdk/gobject-introspection.bst
- sdk/vala.bst
- sdk-deps/gi-docgen.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/geocode-glib.bst
- sdk/glib.bst
- sdk/libsoup-2.4.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:bootstrap-import.bst
