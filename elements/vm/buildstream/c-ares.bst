kind: cmake

depends:
- freedesktop-sdk.bst:bootstrap-import.bst

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

sources:
- kind: git_tag
  url: github:c-ares/c-ares.git
  track: main
  ref: cares-1_19_1-11-gbad62225b7f6b278b92e8e85a255600b629ef517
