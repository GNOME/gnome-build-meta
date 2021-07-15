kind: meson
sources:
- kind: tar
  url: spice:usbredir/usbredir-0.10.0.tar.xz
  ref: 76de718db370d824a833075599a8a035ab284c4a1bf279cca26bb538484d8061
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
