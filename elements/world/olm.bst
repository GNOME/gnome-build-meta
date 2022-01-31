kind: cmake
sources:
- kind: git_tag
  url: https://gitlab.matrix.org/matrix-org/olm
  track: 3.2.10

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
