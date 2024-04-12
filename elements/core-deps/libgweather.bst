kind: meson
sources:
- kind: git_repo
  url: gnome:libgweather.git
  track: main
  ref: 4.4.2-9-gafde63ee135eba52def1a8b1257c136cdaa7ca56
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
