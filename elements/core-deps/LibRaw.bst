kind: autotools

sources:
- kind: tar
  url: https://www.libraw.org/data/LibRaw-0.20.2.tar.gz

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:components/lcms.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  conf-local: >-
    --disable-examples
