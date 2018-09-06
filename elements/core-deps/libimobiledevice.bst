kind: autotools
sources:
- kind: tar
  url: http://www.libimobiledevice.org/downloads/libimobiledevice-1.2.0.tar.bz2
  ref: 786b0de0875053bf61b5531a86ae8119e320edab724fc62fe2150cc931f11037
depends:
- core-deps/libusbmuxd.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
