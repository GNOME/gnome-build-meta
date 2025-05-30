kind: cmake

sources:
- kind: git_repo
  url: github:google/libphonenumber
  track: v*
  ref: v8.13.39-0-gff7fbcb477d829a7e5087fea85d9831e5b8dc9cd

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- boards/common/libgtest.bst
- freedesktop-sdk.bst:components/abseil-cpp.bst
- freedesktop-sdk.bst:components/icu.bst
- freedesktop-sdk.bst:components/protobuf.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  cmake-local: >-
    -DCMAKE_CXX_STANDARD=17
    -DREGENERATE_METADATA=OFF
    -DUSE_BOOST=OFF
    -DBUILD_TESTING=OFF
    -DFETCHCONTENT_FULLY_DISCONNECTED=ON
    'cpp/'
