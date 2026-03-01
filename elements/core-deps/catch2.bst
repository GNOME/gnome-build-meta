kind: meson

sources:
- kind: git_repo
  url: github:catchorg/Catch2.git
  track: 'v*'
  ref: v3.13.0-0-g29c9844f688acb27c87338c39cd186ebfe41aa19

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
