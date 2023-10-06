kind: meson
sources:
- kind: git_repo
  url: gnome:json-glib.git
  track: master
  ref: 1.8.0-actual-4-g9434759ec3b27d043b4decf87ddfc0d8e688206b
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
