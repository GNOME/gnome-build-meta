kind: autotools

sources:
- kind: tar
  url: 
    github_files:protobuf-c/protobuf-c/releases/download/v1.5.2/protobuf-c-1.5.2.tar.gz

  ref: e2c86271873a79c92b58fef7ebf8de1aa0df4738347a8bd5d4e65a80a16d0d24
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  conf-local: >-
    --disable-protoc
