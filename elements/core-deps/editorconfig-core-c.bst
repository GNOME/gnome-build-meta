kind: cmake

sources:
- kind: git_repo
  url: github:editorconfig/editorconfig-core-c.git
  track: 'v*'
  ref: v0.12.10-0-g99d757d197677d270644791f13fffe2644659985

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-cmake.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  local_flags: -Wno-error=stringop-truncation
