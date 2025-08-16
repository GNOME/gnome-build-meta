kind: meson

sources:
- kind: git_repo
  url: github:catchorg/Catch2.git
  track: 'v*'
  ref: v3.9.1-0-g644821ce28cb25d7992a4d0375b1d83214392592

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
