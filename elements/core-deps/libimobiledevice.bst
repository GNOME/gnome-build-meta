kind: autotools
sources:
- kind: tar
  url: http://www.libimobiledevice.org/downloads/libimobiledevice-1.2.0.tar.bz2
depends:
- core-deps/libusbmuxd.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
