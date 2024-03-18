kind: meson
sources:
- kind: git_repo
  url: gnome:libgweather.git
  track: main
  ref: 4.4.0-27-gbaf219cbacce72be47339e1c0078b9d202f01995
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
