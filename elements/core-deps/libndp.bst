kind: autotools
sources:
- kind: tar
  url: http://libndp.org/files/libndp-1.6.tar.gz
  ref: 0c7dfa84e013bd5e569ef2c6292a6f72cfaf14f4ff77a77425e52edc33ffac0e
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
