kind: meson
sources:
- kind: tar
  url: spice:usbredir/usbredir-0.11.0.tar.xz
  ref: 72dd5f3aa90dfbc0510b5149bb5b1654c8f21fdc405dfce7b5dc163dcff19cba
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
