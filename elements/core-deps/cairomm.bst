kind: autotools
sources:
- kind: tar
  url: cairo_org:releases/cairomm-1.15.5.tar.gz
depends:
- core-deps/libsigcplusplus.bst
- filename: components/cairo.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-local: --disable-documentation
