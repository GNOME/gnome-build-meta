kind: meson
sources:
- kind: git_repo
  url: gnome:json-glib.git
  track: master
  ref: 1.8.0-actual-2-g52f7bdcd9ce9fc7e05bb185e418666e0685293d5
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
