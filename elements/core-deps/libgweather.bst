kind: meson
sources:
- kind: tar
  url: gnome_downloads:libgweather/3.91/libgweather-3.91.0.tar.xz
  ref: 725b3eb34fc6d21edc80b6e684728b3088b1fa144f0a2a4d3e9605c7a8f3dcf8
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
