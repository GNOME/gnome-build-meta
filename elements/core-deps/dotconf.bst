kind: autotools
sources:
- kind: tar
  url: github_com:williamh/dotconf/archive/v1.3.tar.gz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
