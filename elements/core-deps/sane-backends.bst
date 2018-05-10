kind: autotools
sources:
- kind: tar
  url: https://alioth.debian.org/frs/download.php/file/4224/sane-backends-1.0.27.tar.gz
depends:
- core-deps/libusb.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
