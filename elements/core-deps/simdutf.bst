kind: cmake

sources:
- kind: tar
  url: github_files:simdutf/simdutf/archive/refs/tags/v6.4.2.tar.gz
  ref: 4e58e35ba85fa914ed080c8075ac3fab8bc856d3b0a08fbacd860b9db4bbcf3b

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  cmake-local: >-
    -DCMAKE_POSITION_INDEPENDENT_CODE=TRUE
    -DCMAKE_CXX_VISIBILITY_PRESET=hidden
    -DCMAKE_VISIBILITY_INLINES_HIDDEN=TRUE
