kind: meson
sources:
- kind: git_repo
  url: gnome:libgweather.git
  track: main
  ref: 4.4.4-12-gc5e97bae5d0ff67d8d88fc94748167ec9ce0e862
build-depends:
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/geocode-glib.bst
- sdk/glib.bst
- sdk/libsoup.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:bootstrap-import.bst
