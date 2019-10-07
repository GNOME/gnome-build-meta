kind: autotools
sources:
- kind: tar
  url: http://libndp.org/files/libndp-1.6.tar.gz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
