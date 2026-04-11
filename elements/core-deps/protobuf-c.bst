kind: autotools

sources:
- kind: git_repo
  url: github:protobuf-c/protobuf-c.git
  track: 'v*.*.*'
  ref: v1.5.2-0-g4719fdd7760624388c2c5b9d6759eb6a47490626
- kind: patch
  path: patches/protobuf-c/compatibility_with_protobuf_34.x.patch

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/protobuf.bst

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{bindir}/*'
