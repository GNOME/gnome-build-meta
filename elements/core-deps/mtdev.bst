kind: autotools
sources:
- kind: tar
  url: http://bitmath.org/code/mtdev/mtdev-1.1.5.tar.bz2
depends:
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-aux: config-aux
