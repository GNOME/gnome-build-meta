kind: cmake

sources:
- kind: git_repo
  url: github:google/re2.git
  track: main
  ref: 2022-06-01-22-gccec7ce952dbf6d9beeaf7ee43ea5d679e509e92

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
