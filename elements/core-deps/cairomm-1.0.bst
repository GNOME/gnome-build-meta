kind: meson
sources:
- kind: tar
  url: cairo_org:releases/cairomm-1.13.1.tar.gz
  ref: 97a78bd7de6baf8af3da1f9b39f1317f8da9f1145b7694e928fbd5521da08ef6
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
