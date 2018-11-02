kind: autotools
sources:
- kind: tar
  url: https://github.com/yaml/libyaml/archive/0.1.7.tar.gz
depends:
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
