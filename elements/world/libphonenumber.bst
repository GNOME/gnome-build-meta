kind: cmake

sources:
- kind: git_repo
  url: github:google/libphonenumber
  track: v*
  ref: v8.13.22-0-g4189ef0fd972c8b54b8f9d25bf0d600ad9d80a9e

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/abseil-cpp.bst
- freedesktop-sdk.bst:components/icu.bst
- freedesktop-sdk.bst:components/protobuf.bst
- core/gnome-desktop.bst
- core-deps/gspell.bst
- world/libgtest.bst

variables:
  cmake-local: >-
    -DCMAKE_CXX_STANDARD=17
    -DREGENERATE_METADATA=OFF
    -DUSE_BOOST=OFF
    'cpp/'
