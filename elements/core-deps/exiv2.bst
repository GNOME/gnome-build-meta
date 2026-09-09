kind: cmake

sources:
- kind: git_repo
  url: github:Exiv2/exiv2.git
  track: 'v*'
  ref: v0.28.9-0-gb0859fc61fea5dedfc898aece6b15893ddf4314e

build-depends:
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/brotli.bst
- freedesktop-sdk.bst:components/expat.bst
- freedesktop-sdk.bst:components/inih.bst
