kind: autotools
sources:
- kind: tar
  url: http://www.libimobiledevice.org/downloads/libplist-2.0.0.tar.bz2
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
