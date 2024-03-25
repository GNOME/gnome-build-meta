kind: meson
sources:
- kind: git_repo
  url: gnome:json-glib.git
  track: master
  ref: 1.8.0-actual-90-g4db3373b1f09379386e55d9f6662cf77e17ca13d
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
