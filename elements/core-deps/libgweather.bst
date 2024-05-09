kind: meson
sources:
- kind: git_repo
  url: gnome:libgweather.git
  track: main
  ref: 4.4.2-16-g0a51edb141c9c767134cf854b8caf2fe48f4ac70
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
