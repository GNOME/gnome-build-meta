kind: meson
sources:
- kind: tar
  url: https://gitlab.freedesktop.org/geoclue/geoclue/-/archive/2.5.1/geoclue-2.5.1.tar.gz
  ref: f552ba69ce32519f78858c48215680e364b9b01197550df9327c5a01e44a9913
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/json-glib.bst
- sdk/libnotify.bst
- sdk/libsoup.bst
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
