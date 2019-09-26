kind: autotools
sources:
- kind: tar
  url: http://bitmath.org/code/mtdev/mtdev-1.1.5.tar.bz2
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  conf-aux: config-aux
