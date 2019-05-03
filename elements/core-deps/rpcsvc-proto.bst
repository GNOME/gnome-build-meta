kind: autotools
sources:
- kind: tar
  url: github_com:thkukuk/rpcsvc-proto/archive/v1.3.1.tar.gz
depends:
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
