kind: autotools
sources:
- kind: tar
  url: https://s3.amazonaws.com/json-c_releases/releases/json-c-0.13.1.tar.gz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
