kind: cmake

sources:
- kind: tar
  url: github_files:Exiv2/exiv2/archive/v0.28.5.tar.gz
  ref: e1671f744e379a87ba0c984617406fdf8c0ad0c594e5122f525b2fb7c28d394d

build-depends:
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/brotli.bst
- freedesktop-sdk.bst:components/expat.bst
- freedesktop-sdk.bst:components/inih.bst
