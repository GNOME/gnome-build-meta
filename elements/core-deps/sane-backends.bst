kind: autotools
sources:
- kind: tar
  url: https://gitlab.com/sane-project/backends/uploads/a3ba9fff29253a94e84074917bff581a/sane-backends-1.0.27.tar.gz
  ref: 293747bf37275c424ebb2c833f8588601a60b2f9653945d5a3194875355e36c9
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/libusb.bst
- freedesktop-sdk.bst:bootstrap-import.bst
