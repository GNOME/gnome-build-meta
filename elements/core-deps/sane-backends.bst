kind: autotools
sources:
- kind: tar
  url: https://gitlab.com/sane-project/backends/uploads/a3ba9fff29253a94e84074917bff581a/sane-backends-1.0.27.tar.gz
depends:
- core-deps/libusb.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
