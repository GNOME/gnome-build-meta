kind: autotools
sources:
- kind: tar
  url: http://bitmath.org/code/mtdev/mtdev-1.1.5.tar.bz2
depends:
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  conf-aux: config-aux
