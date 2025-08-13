kind: meson
sources:
- kind: tar
  url: 
    freedesktop_files:-/project/58/uploads/13b249e695a0d9aa7cb501b1a85ebab1/libcacard-2.8.1.tar.xz
  ref: fbbf4de8cb7db5bdff5ecb672ff0dbe6939fb9f344b900d51ba6295329a332e7

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/sed.bst

depends:
- sdk/glib.bst
- freedesktop-sdk.bst:components/nss.bst
- freedesktop-sdk.bst:components/pcsc-lite.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Ddisable_tests=true
