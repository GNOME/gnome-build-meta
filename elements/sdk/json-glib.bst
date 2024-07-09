kind: meson
sources:
- kind: tar
  url: gnome_downloads:json-glib/1.9/json-glib-1.9.2.tar.xz
  ref: 8f9f04e0045bda82affd464ee575796600fe29014b817392a3b72ceb2d10c595
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
