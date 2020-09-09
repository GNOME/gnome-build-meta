kind: autotools
sources:
- kind: tar
  url: downloads.sourceforge.net:libmtp/libmtp/1.1.17/libmtp-1.1.17.tar.gz
  ref: f8a34cf52d9f9b9cb8c7f26b12da347d4af7eb904c13189602e4c6b62d1a79dc
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/libusb.bst
- freedesktop-sdk.bst:bootstrap-import.bst
