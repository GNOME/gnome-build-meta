kind: autotools
sources:
- kind: tar
  url: https://www.x.org/releases/individual/lib/libXfont2-2.0.3.tar.bz2
depends:
- core-deps/fontenc.bst
- core-deps/font-util.bst
- filename: desktop/freetype.bst
  junction: freedesktop-sdk.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
