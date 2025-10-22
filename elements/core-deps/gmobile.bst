kind: meson

sources:
- kind: tar
  url: phosh:gmobile/gmobile-0.1.0.tar.xz
  ref: 47172e7b245fbb30b40c02135d2ff36987e36a8e825f9bf5932acd2aa6eabfcd

build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/json-glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
