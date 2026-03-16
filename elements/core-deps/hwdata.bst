kind: autotools

sources:
- kind: git_repo
  url: github:vcrhonek/hwdata.git
  track: 'v*'
  ref: v0.405-0-gbe46d7186e918e62eb75de399e800145a781c8db

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
