kind: autotools

sources:
- kind: tar
  url: github_files:protobuf-c/protobuf-c/releases/download/v1.5.0/protobuf-c-1.5.0.tar.gz

  ref: 7b404c63361ed35b3667aec75cc37b54298d56dd2bcf369de3373212cc06fd98
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  conf-local: >-
    --disable-protoc
