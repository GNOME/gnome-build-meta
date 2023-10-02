kind: cmake

sources:
- kind: git_repo
  url: github:google/libphonenumber
  track: v8.13.22
  ref: v8.13.22-0-g4189ef0fd972c8b54b8f9d25bf0d600ad9d80a9e

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:components/protobuf.bst
- world/libgtest.bst
- core-deps/boost.bst
- freedesktop-sdk.bst:components/icu.bst

variables:
  # Element-specific extra arguments to be passed to `cmake`.
  cmake-local: 'cpp/'
