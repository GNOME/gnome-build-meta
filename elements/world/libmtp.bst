kind: autotools
sources:
- kind: tar
  url: downloads.sourceforge.net:libmtp/libmtp/1.1.15/libmtp-1.1.15.tar.gz
depends:
- core-deps/libusb.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
