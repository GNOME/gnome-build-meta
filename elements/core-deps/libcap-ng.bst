kind: autotools

sources:
- kind: tar
  url: github:stevegrubb/libcap-ng/archive/refs/tags/v0.8.2.tar.gz

  ref: 65b86885b8d873e55c05bd49427fd370d559b26f0c2089ac9194828e6a2fe233
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  conf-local: >-
    --without-python
    --without-python3
