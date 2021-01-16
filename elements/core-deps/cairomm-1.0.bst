kind: meson
sources:
- kind: tar
  url: cairo_org:releases/cairomm-1.14.2.tar.xz
  ref: 0126b9cc295dc36bc9c0860d5b720cb5469fd78d5620c8f10cc5f0c07b928de3
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
