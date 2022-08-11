kind: meson
sources:
- kind: tar
  url: gnome_downloads:libgweather/4.1/libgweather-4.1.0.tar.xz
  ref: 00bb8998e3b9a905f3a8d3295fcc15652d6b09cda5efa224e6744ded7abda65a
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
