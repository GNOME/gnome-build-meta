kind: autotools

sources:
- kind: git_repo
  url: github:vcrhonek/hwdata.git
  track: 'v*'
  ref: v0.398-0-g4c97c196390e16a84d3394e7e6f0608046f7ba81

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
