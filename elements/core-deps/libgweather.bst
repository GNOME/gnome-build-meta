kind: meson
sources:
- kind: git_tag
  url: gnome:libgweather.git
  track: main
  ref: 4.2.0-7-g4a2dc85ce9c5e1df9aa5c49268867188b8381a47
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
