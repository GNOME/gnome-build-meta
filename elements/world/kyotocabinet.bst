kind: autotools
sources:
- kind: tar
  url: http://fallabs.com/kyotocabinet/pkg/kyotocabinet-1.2.76.tar.gz
- kind: patch
  path: files/kyotocabinet/cpp-14.patch
depends:
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
