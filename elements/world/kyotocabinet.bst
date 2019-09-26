kind: autotools
sources:
- kind: tar
  url: http://fallabs.com/kyotocabinet/pkg/kyotocabinet-1.2.76.tar.gz
- kind: patch
  path: files/kyotocabinet/cpp-14.patch
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
