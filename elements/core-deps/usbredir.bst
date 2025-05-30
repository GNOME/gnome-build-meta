kind: meson
sources:
- kind: tar
  url: spice:usbredir/usbredir-0.15.0.tar.xz
  ref: 6dc2a380277688a068191245dac2ab7063a552999d8ac3ad8e841c10ff050961
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- core-deps/spice-protocol.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/libusb.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
variables:
  meson-local: >-
    -Dgit_werror=disabled
    -Dfuzzing=disabled
