kind: autotools
sources:
- kind: tar
  url: github_com:thkukuk/rpcsvc-proto/archive/v1.3.1.tar.gz
  ref: 95219e83e11aba0abb4149d3e997e5fc8060912dde10af4d9f41fc1d79c7a919
depends:
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
