kind: meson
sources:
- kind: tar
  url: https://gitlab.freedesktop.org/spice/libcacard/uploads/9d8f24b131bcbbd7846727ea92952cb5/libcacard-2.8.0.tar.xz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/nss.bst
- freedesktop-sdk.bst:components/pcsc-lite.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Ddisable_tests=true
