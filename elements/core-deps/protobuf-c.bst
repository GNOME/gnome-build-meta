kind: autotools

sources:
- kind: tar
  url: github_files:protobuf-c/protobuf-c/releases/download/v1.4.1/protobuf-c-1.4.1.tar.gz
  ref: 4cc4facd508172f3e0a4d3a8736225d472418aee35b4ad053384b137b220339f

build-depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
  - freedesktop-sdk.bst:components/protobuf.bst
