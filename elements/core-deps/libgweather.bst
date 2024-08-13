kind: meson
sources:
- kind: tar
  url: gnome_downloads:libgweather/4.4/libgweather-4.4.2.tar.xz
  ref: a6e427b4770ada48945f3aa906af710fc833cff0d42df91f1828302740d794ec
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
