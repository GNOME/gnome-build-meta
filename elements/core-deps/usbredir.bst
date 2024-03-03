kind: meson
sources:
- kind: tar
  url: spice:usbredir/usbredir-0.14.0.tar.xz
  ref: 924dfb5c78328fae45a4c93a01bc83bb72c1310abeed119109255627a8baa332
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
