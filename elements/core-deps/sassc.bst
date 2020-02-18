kind: autotools
depends:
- core-deps/libsass.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
sources:
- kind: tar
  url: https://github.com/sass/sassc/releases/download/3.4.8/sassc-3.4.8.tar.gz
  ref: d61587b6c084a54e602650c1d845928a20c8d309a0eeec6b1d2499489867ce03
