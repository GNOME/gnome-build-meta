kind: autotools
sources:
- kind: tar
  url: http://www.libimobiledevice.org/downloads/libusbmuxd-1.0.10.tar.bz2
depends:
- world/plist.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
