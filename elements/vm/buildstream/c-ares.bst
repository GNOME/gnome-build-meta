kind: cmake

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

sources:
- kind: git_tag
  url: github:c-ares/c-ares.git
  track: main
  ref: cares-1_19_1-6-gc1b00c41a7a1eb27f6d6775a8c1ff52ad0fb8543
