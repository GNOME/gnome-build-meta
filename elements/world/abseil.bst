kind: cmake

sources:
- kind: git_tag
  url: github:abseil/abseil-cpp.git
  track: master
  ref: 5d4715ae38554da6efbd4d7b84022f4fa68f2f2f

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
