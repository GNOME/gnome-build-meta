kind: autotools

sources:
- kind: git_repo
  url: github:vcrhonek/hwdata.git
  track: 'v*'
  ref: v0.410-0-g8bb6c48dc2e683777e625d1c9ef02c1b25b741cd

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
