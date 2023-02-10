kind: meson
sources:
- kind: git_tag
  url: gnome:json-glib.git
  track: master
  ref: 1.6.6-51-g5e6e76f6b91c85db158dfd960d769178b634a296
build-depends:
- sdk/gobject-introspection.bst
- sdk-deps/gi-docgen.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dgtk_doc=enabled
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libjson-glib-1.0.so'
