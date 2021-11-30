kind: meson
sources:
- kind: tar
  url: https://www.spice-space.org/download/usbredir/usbredir-0.12.0.tar.xz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- core-deps/spice-protocol.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/libusb.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dgit_werror=disabled
    -Dfuzzing=disabled
