kind: meson
sources:
- kind: tar
  url: cairo_org:releases/cairomm-1.14.3.tar.xz
  ref: 0d37e067c5c4ca7808b7ceddabfe1932c5bd2a750ad64fb321e1213536297e78
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/libsigcplusplus-2.0.bst
- freedesktop-sdk.bst:components/cairo.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dmaintainer-mode=true
    -Dbuild-documentation=false
    -Dwarnings=min
