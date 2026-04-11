kind: autotools

sources:
- kind: git_repo
  url: github:vcrhonek/hwdata.git
  track: 'v*'
  ref: v0.406-0-g9ae3b9da5cbb93eed30f812aa7edb4b9ad3e3868

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
