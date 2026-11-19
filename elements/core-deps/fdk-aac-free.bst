kind: autotools

sources:
- kind: git_repo
  url: freedesktop:wtaymans/fdk-aac-stripped.git
  track: stripped5
  ref: android-9.0.0_r42-1498-g9896ddc0d08bb3f764f01d5e372bec1c068ad8f5

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
