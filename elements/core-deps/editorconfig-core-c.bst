kind: cmake

sources:
- kind: git_repo
  url: github:editorconfig/editorconfig-core-c.git
  track: 'v*'
  ref: v0.12.11-0-g0ba157eff167c1b2d1bc0c3e13975b7a73fb9d25

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  local_flags: -Wno-error=stringop-truncation
