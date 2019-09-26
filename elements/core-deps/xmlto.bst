kind: autotools
sources:
- kind: tar
  url: https://releases.pagure.org/xmlto/xmlto-0.0.28.tar.bz2
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:components/util-linux.bst
- freedesktop-sdk.bst:bootstrap-import.bst
