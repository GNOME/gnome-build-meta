kind: autotools
sources:
- kind: tar
  url: github_com:williamh/dotconf/archive/v1.3.tar.gz
depends:
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
