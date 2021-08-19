kind: meson
sources:
- kind: tar
  url: gnome_downloads:json-glib/1.6/json-glib-1.6.4.tar.xz
  ref: b1f6a7930808f77a827f3b397a04bb89d4c0c0b2550885d4a5e4c411dfa13f5f
build-depends:
- sdk/gobject-introspection.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dgtk_doc=disabled
public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libjson-glib-1.0.so'
