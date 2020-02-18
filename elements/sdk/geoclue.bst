kind: meson
sources:
- kind: tar
  url: https://gitlab.freedesktop.org/geoclue/geoclue/-/archive/2.5.1/geoclue-2.5.1.tar.gz
  ref: f552ba69ce32519f78858c48215680e364b9b01197550df9327c5a01e44a9913
depends:
- sdk/glib.bst
- filename: sdk/gtk-doc.bst
  type: build
- sdk/json-glib.bst
- sdk/libnotify.bst
- sdk/libsoup.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: public-stacks/buildsystem-meson.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  meson-local: >-
    -D3g-source=false
    -Dcdma-source=false
    -Dmodem-gps-source=false
    -Dnmea-source=false
