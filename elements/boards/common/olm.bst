kind: cmake
sources:
- kind: git_repo
  url: https://gitlab.matrix.org/matrix-org/olm
  track: 3.2.10

  ref: 3.2.10-0-g9908862979147a71dc6abaecd521be526ae77be1
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
