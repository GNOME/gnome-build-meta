kind: autotools

sources:
- kind: git_repo
  url: github:vcrhonek/hwdata.git
  track: 'v*'
  ref: v0.399-0-g7ba0e54565843faee300ca885699e4c42ed674b2

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
