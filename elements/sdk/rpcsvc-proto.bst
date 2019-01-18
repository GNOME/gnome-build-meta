kind: autotools
sources:
- kind: tar
  url: github_com:thkukuk/rpcsvc-proto/archive/v1.3.1.tar.gz
depends:
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
