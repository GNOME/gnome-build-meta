kind: meson
sources:
- kind: tar
  url: gnome_downloads:libgweather/4.1/libgweather-4.1.1.tar.xz
  ref: 55ae7b4ff349473051ab42c601ab82e2f4b98456264dddc0c5d1971dad5603f2
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
