kind: autotools
sources:
- kind: tar
  url: http://www.libimobiledevice.org/downloads/libimobiledevice-1.2.0.tar.bz2
depends:
- core-deps/libusbmuxd.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
