kind: autotools
sources:
- kind: tar
  url: spice:usbredir/usbredir-0.9.0.tar.xz
  ref: a3e167bf42bc7fe02c3c9db27d7767f1b8ce41b99ad14a4b0d0a60abe8bf56a6
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- core-deps/spice-protocol.bst
depends:
- freedesktop-sdk.bst:components/libusb.bst
- freedesktop-sdk.bst:bootstrap-import.bst
