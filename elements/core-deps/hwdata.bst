kind: autotools

sources:
- kind: git_repo
  url: github:vcrhonek/hwdata.git
  track: 'v*'
  ref: v0.404-0-g428ad3882fff801c553fc575d99bcdb2edbd41f7

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
