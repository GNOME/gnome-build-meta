kind: autotools
sources:
- kind: tar
  url: https://www.x.org/releases/individual/lib/libfontenc-1.1.3.tar.bz2
depends:
- filename: desktop/xorg-proto-xorgproto.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
