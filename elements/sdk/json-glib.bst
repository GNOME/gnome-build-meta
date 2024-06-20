kind: meson
sources:
- kind: git_repo
  url: gnome:json-glib.git
  track: main
  ref: 1.8.0-actual-119-g0beef7d291814d8a4e73f7a3c18640b6d38c6f34
build-depends:
- sdk/gobject-introspection.bst
- sdk-deps/gi-docgen.bst
- freedesktop-sdk.bst:components/python3-docutils.bst
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
