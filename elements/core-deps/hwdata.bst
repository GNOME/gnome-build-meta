kind: autotools

sources:
- kind: git_repo
  url: github:vcrhonek/hwdata.git
  track: 'v*'
  ref: v0.407-0-ga9bbe4d8619e9a73dc433db2d2afceda8cbeae10

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
