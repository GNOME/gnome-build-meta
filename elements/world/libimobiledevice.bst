kind: autotools
sources:
- kind: tar
  url: http://www.libimobiledevice.org/downloads/libimobiledevice-1.2.0.tar.bz2
depends:
- world/libusbmuxd.bst
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
