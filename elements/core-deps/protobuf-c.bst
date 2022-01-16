kind: autotools

sources:
- kind: tar
  url: github:protobuf-c/protobuf-c/releases/download/v1.4.0/protobuf-c-1.4.0.tar.gz

depends:
- core-deps/protobuf.bst
- freedesktop-sdk.bst:bootstrap-import.bst

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
