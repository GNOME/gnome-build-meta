kind: meson
sources:
- kind: tar
  url: gnome_downloads:libgweather/3.99/libgweather-3.99.0.tar.xz
  ref: f69d91aa939ca4bd7dffda208fdc30fd0d75c8a3caa828d5d2f011b19d9a152e
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
