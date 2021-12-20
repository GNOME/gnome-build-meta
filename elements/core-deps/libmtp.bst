kind: autotools
sources:
- kind: tar
  url: downloads.sourceforge.net:libmtp/libmtp/1.1.18/libmtp-1.1.18.tar.gz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/libusb.bst
- freedesktop-sdk.bst:bootstrap-import.bst
