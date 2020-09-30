kind: meson

sources:
- kind: tar
  url: cairo_org:releases/cairomm-1.16.0.tar.xz

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/libsigcplusplus.bst
- freedesktop-sdk.bst:components/cairo.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  meson-local: >-
    -Dmaintainer-mode=true
    -Dbuild-documentation=false
    -Dwarnings=min
