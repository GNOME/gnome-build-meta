kind: autotools
sources:
- kind: tar
  url: http://downloads.xiph.org/releases/vorbis/libvorbis-1.3.6.tar.xz
depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
  type: runtime
