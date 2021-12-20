kind: cmake
sources:
- kind: tar
  url: github_com:Exiv2/exiv2/archive/v0.27.3.tar.gz
- kind: patch
  path: files/exiv2/disable-protection-flags.patch
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
