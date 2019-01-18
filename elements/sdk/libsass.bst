kind: autotools

depends:
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
sources:
- kind: tar
  url: https://github.com/sass/libsass/archive/3.5.0.tar.gz
