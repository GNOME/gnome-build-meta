kind: cmake
sources:
- kind: tar
  url: github_com:Exiv2/exiv2/archive/v0.26.tar.gz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
