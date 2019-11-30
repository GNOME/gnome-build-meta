kind: autotools
sources:
- kind: tar
  url: http://www.libimobiledevice.org/downloads/libimobiledevice-1.2.0.tar.bz2

variables:
  conf-local: >-
    --without-cython

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- world/libusbmuxd.bst
- freedesktop-sdk.bst:bootstrap-import.bst
