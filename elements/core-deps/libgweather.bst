kind: meson
sources:
- kind: git_repo
  url: gnome:libgweather.git
  track: main
  ref: 4.4.4-35-g6a61fe09e5ddb958a5650f0db681402ff57f105f
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
