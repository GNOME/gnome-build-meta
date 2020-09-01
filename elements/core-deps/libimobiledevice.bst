kind: autotools

sources:
- kind: tar
  url: https://github.com/libimobiledevice/libimobiledevice/releases/download/1.3.0/libimobiledevice-1.3.0.tar.bz2

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- core-deps/libusbmuxd.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  conf-local: >-
    --without-cython
