depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: autotools
sources:
- kind: tar
  ref: 0c7dfa84e013bd5e569ef2c6292a6f72cfaf14f4ff77a77425e52edc33ffac0e
  url: http://libndp.org/files/libndp-1.6.tar.gz
variables:
  conf-aux: build-aux
