kind: autotools
sources:
- kind: tar
  url: spice:usbredir/usbredir-0.7.1.tar.bz2
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- core-deps/spice-protocol.bst
depends:
- freedesktop-sdk.bst:components/libusb.bst
- freedesktop-sdk.bst:bootstrap-import.bst
