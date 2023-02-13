kind: meson
sources:
- kind: git_tag
  url: gnome:libgweather.git
  track: main
  ref: 4.2.0-24-gc862e722746b94fdc52eeb9d474ca133c121d782
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
