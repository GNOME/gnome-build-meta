kind: meson

sources:
- kind: git_repo
  url: github:catchorg/Catch2.git
  track: 'v*'
  ref: v3.16.1-0-g08092139210881f01a34e60c5f2fd6afa0ea4024

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
