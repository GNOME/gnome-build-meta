kind: autotools

sources:
- kind: tar
  url: https://www.libraw.org/data/LibRaw-0.19.5.tar.gz

  ref: 40a262d7cc71702711a0faec106118ee004f86c86cc228281d12d16da03e02f5
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:components/lcms.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  conf-local: >-
    --disable-examples
