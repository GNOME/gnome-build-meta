kind: meson
sources:
- kind: tar
  url: videolan_pub:videolan/libbluray/1.4.1/libbluray-1.4.1.tar.xz
  ref: 76b5dc40097f28dca4ebb009c98ed51321b2927453f75cc72cf74acd09b9f449
build-depends:
- freedesktop-sdk.bst:components/doxygen.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:components/fontconfig.bst
- freedesktop-sdk.bst:components/freetype.bst
- freedesktop-sdk.bst:components/libxml2.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  meson-local: >-
    -Dbdj_jar=disabled
    -Denable_docs=true
