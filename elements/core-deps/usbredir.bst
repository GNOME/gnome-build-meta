kind: autotools
sources:
- kind: tar
  url: spice:usbredir/usbredir-0.7.1.tar.bz2
  ref: 407e9e27a1369f01264d5501ffbe88935ddd7d5de675f5835db05dc9c9ac56f3
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- core-deps/spice-protocol.bst
depends:
- freedesktop-sdk.bst:components/libusb.bst
- freedesktop-sdk.bst:bootstrap-import.bst
