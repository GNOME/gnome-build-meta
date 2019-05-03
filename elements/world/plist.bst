kind: autotools
sources:
- kind: tar
  url: http://www.libimobiledevice.org/downloads/libplist-2.0.0.tar.bz2
depends:
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
