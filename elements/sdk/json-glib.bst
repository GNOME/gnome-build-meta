kind: meson
sources:
- kind: tar
  url: gnome_downloads:json-glib/1.6/json-glib-1.6.2.tar.xz
  ref: a33d66c6d038bda46b910c6c6d59c4e15db014e363dc997a0414c2e07d134f24
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
