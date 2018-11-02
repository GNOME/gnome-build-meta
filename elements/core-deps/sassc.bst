kind: autotools
depends:
- core-deps/libsass.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
sources:
- kind: tar
  url: https://github.com/sass/sassc/releases/download/3.4.8/sassc-3.4.8.tar.gz
