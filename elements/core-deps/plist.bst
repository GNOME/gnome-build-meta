kind: autotools

sources:
- kind: tar
  url: https://github.com/libimobiledevice/libplist/releases/download/2.2.0/libplist-2.2.0.tar.bz2

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  conf-local: >-
    --without-cython
