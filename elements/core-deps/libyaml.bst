kind: autotools
sources:
- kind: tar
  url: github_com:yaml/libyaml/archive/0.1.7.tar.gz
depends:
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
