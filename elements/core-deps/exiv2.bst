kind: cmake

sources:
- kind: tar
  url: github_files:Exiv2/exiv2/archive/v0.28.1.tar.gz
  ref: 3078651f995cb6313b1041f07f4dd1bf0e9e4d394d6e2adc6e92ad0b621291fa

build-depends:
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/brotli.bst
- freedesktop-sdk.bst:components/expat.bst
- freedesktop-sdk.bst:components/inih.bst
