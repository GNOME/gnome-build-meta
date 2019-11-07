kind: cmake
sources:
- kind: git_tag
  url: git_freedesktop_org:uchardet/uchardet.git
  track: master
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
# TODO: split-rules
