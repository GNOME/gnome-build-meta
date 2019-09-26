kind: autotools
sources:
- kind: tar
  url: github_com:yaml/libyaml/archive/0.1.7.tar.gz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
