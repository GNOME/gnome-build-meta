kind: autotools
sources:
- kind: tar
  url: https://libopenraw.freedesktop.org/download/exempi-2.4.5.tar.bz2
  ref: 406185feb88e84ea1d4b4251370be2991205790d7113a7e28e192ff46a4f221e
depends:
- core-deps/boost.bst
- filename: components/expat.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
