kind: autotools

sources:
- kind: tar
  url: sourceforge:libmtp/libmtp/1.1.22/libmtp-1.1.22.tar.gz
  ref: c3fcf411aea9cb9643590cbc9df99fa5fe30adcac695024442973d76fa5f87bc

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:components/libusb.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
