kind: autotools
sources:
- kind: tar
  url: http://fallabs.com/kyotocabinet/pkg/kyotocabinet-1.2.76.tar.gz
- kind: patch
  path: files/kyotocabinet/cpp-14.patch
depends:
- filename: base.bst
  junction: freedesktop-sdk.bst
