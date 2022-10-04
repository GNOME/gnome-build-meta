kind: meson

sources:
- kind: tar
  url: freedesktop_files:geoclue/geoclue/uploads/0e42403294a35949d2481da6514994f3/geoclue-2.6.0.tar.xz
  ref: 2283effa8f9c40c3331dd9ae89d01011d17cbeae12b03e1b7579482d8ceb253e

build-depends:
- sdk/gobject-introspection.bst
- sdk/gtk-doc.bst
- sdk/vala.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/json-glib.bst
- sdk/libnotify.bst
- sdk/libsoup-2.4.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -D3g-source=false
    -Dcdma-source=false
    -Dmodem-gps-source=false
    -Dnmea-source=false

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libgeoclue-2.so'
