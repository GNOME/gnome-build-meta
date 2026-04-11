kind: meson
sources:
- kind: git_repo
  url: freedesktop:spice/usbredir.git
  track: "usbredir-*.*.*"
  ref: usbredir-0.15.0-0-g41c79583a4eecaf6cfe938278554210c718c85d2
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
