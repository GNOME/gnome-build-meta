kind: autotools

sources:
- kind: tar
  url: libopenraw:download/exempi-2.6.6.tar.bz2
  ref: 7513b7e42c3bd90a58d77d938c60d2e87c68f81646e7cb8b12d71fe334391c6f

build-depends:
- freedesktop-sdk.bst:components/expat.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  conf-local: >-
    --disable-unittest
