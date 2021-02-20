kind: autotools
sources:
- kind: tar
  url: spice:usbredir/usbredir-0.8.0.tar.bz2
  ref: 87bc9c5a81c982517a1bec70dc8d22e15ae197847643d58f20c0ced3c38c5e00
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- core-deps/spice-protocol.bst
depends:
- freedesktop-sdk.bst:components/libusb.bst
- freedesktop-sdk.bst:bootstrap-import.bst
