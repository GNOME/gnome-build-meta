kind: meson
sources:
- kind: tar
  url: gnome_downloads:json-glib/1.10/json-glib-1.10.8.tar.xz
  ref: 55c5c141a564245b8f8fbe7698663c87a45a7333c2a2c56f06f811ab73b212dd
build-depends:
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:components/python3-docutils.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
variables:
  meson-local: >-
    -Dgtk_doc=enabled
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libjson-glib-1.0.so'
