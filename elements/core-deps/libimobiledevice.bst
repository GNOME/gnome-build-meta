kind: autotools

sources:
- kind: tar
  url: https://github.com/libimobiledevice/libimobiledevice/releases/download/1.3.0/libimobiledevice-1.3.0.tar.bz2
  ref: 53f2640c6365cd9f302a6248f531822dc94a6cced3f17128d4479a77bd75b0f6

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- core-deps/libusbmuxd.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  conf-local: >-
    --without-cython
