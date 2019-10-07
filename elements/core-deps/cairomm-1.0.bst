kind: autotools
sources:
- kind: tar
  url: cairo_org:releases/cairomm-1.13.1.tar.gz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/libsigcplusplus-2.0.bst
- freedesktop-sdk.bst:components/cairo.bst
- freedesktop-sdk.bst:bootstrap-import.bst
