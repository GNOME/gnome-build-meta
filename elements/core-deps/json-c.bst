kind: autotools
sources:
- kind: tar
  url: https://s3.amazonaws.com/json-c_releases/releases/json-c-0.13.1.tar.gz
  ref: b87e608d4d3f7bfdd36ef78d56d53c74e66ab278d318b71e6002a369d36f4873
depends:
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
