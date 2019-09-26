kind: autotools
sources:
- kind: tar
  url: github_com:thkukuk/rpcsvc-proto/archive/v1.3.1.tar.gz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
