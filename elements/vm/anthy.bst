kind: autotools
sources:
- kind: tar
  url: http://http.debian.net/debian/pool/main/a/anthy/anthy_0.3.orig.tar.gz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
