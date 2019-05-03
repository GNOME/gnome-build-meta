kind: autotools
sources:
- kind: tar
  url: cairo_org:releases/cairomm-1.13.1.tar.gz
depends:
- core-deps/libsigcplusplus-2.0.bst
- filename: desktop/cairo.bst
  junction: freedesktop-sdk.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-aux: build
