kind: meson
sources:
- kind: tar
  url: spice:usbredir/usbredir-0.12.0.tar.xz
  ref: fbb44025bf55e1ce8d84afc7596bfa47c8a36cd603c6fa440f9102c1c9761e6d
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
