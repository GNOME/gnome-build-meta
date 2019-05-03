kind: autotools
sources:
- kind: tar
  url: http://www.libimobiledevice.org/downloads/libimobiledevice-1.2.0.tar.bz2
depends:
- world/libusbmuxd.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
