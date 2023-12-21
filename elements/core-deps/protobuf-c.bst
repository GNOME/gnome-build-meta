kind: autotools

sources:
- kind: git_repo
  url: github:protobuf-c/protobuf-c.git
  track: v*
  ref: v1.5.0-0-g8c201f6e47a53feaab773922a743091eb6c8972a

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  conf-local: >-
    --disable-protoc
