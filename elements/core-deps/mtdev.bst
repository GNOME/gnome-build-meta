kind: autotools
sources:
- kind: tar
  url: http://bitmath.org/code/mtdev/mtdev-1.1.5.tar.bz2
  ref: 6677d5708a7948840de734d8b4675d5980d4561171c5a8e89e54adf7a13eba7f
depends:
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-aux: config-aux
