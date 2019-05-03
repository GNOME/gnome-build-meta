kind: autotools
sources:
- kind: tar
  url: https://s3.amazonaws.com/json-c_releases/releases/json-c-0.13.1.tar.gz
depends:
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
