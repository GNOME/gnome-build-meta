kind: meson
sources:
- kind: tar
  url: gnome_downloads:libgweather/4.4/libgweather-4.4.4.tar.xz
  ref: 7017677753cdf7d1fdc355e4bfcdb1eba8369793a8df24d241427a939cbf4283
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
