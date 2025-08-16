kind: cmake

sources:
- kind: git_repo
  url: github:Exiv2/exiv2.git
  track: 'v*'
  ref: v0.28.5-0-g907169fa643c2c74c14fd4106e55eaeee3634d9f

build-depends:
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/brotli.bst
- freedesktop-sdk.bst:components/expat.bst
- freedesktop-sdk.bst:components/inih.bst
