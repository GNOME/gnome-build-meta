kind: autotools
sources:
- kind: tar
  url: https://libopenraw.freedesktop.org/download/exempi-2.4.5.tar.bz2
depends:
- core-deps/boost.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
