kind: meson
sources:
- kind: tar
  url: gnome_downloads:libgweather/4.0/libgweather-4.0.0.tar.xz
  ref: 440d44801b6f72b48c676e5e37f9109cfee1394fd74cc92725e1b1ba4fae834c
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
