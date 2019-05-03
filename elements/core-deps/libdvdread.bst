kind: autotools
sources:
- kind: tar
  url: http://download.videolan.org/pub/videolan/libdvdread/6.0.0/libdvdread-6.0.0.tar.bz2
depends:
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
