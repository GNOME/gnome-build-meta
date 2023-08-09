kind: meson
sources:
- kind: tar
  url: gnome_downloads:libgweather/4.3/libgweather-4.3.2.tar.xz
  ref: 559da8150208be61af5f529d6712aa8836ccaef0866a165022d941a7d2fb3826
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
