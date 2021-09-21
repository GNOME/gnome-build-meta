kind: meson

sources:
- kind: tar
  url: https://gitlab.freedesktop.org/geoclue/geoclue/-/archive/2.5.7/geoclue-2.5.7.tar.gz

  ref: 5c3bbfd598bfa54e32cb72a583cdad8aec4208ed83db6127e9b254554967fdc3
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
