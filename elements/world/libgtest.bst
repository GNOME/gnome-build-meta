kind: cmake

sources:
- kind: git_tag
  url: github:google/googletest.git
  track: main
  ref: release-1.12.0-125-g4408a0288b24fbe9156a9b14bbecd148ea64f40f

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
