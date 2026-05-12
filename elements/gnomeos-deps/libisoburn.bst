kind: autotools

sources:
- kind: git_repo
  url: lovelyhq:libburnia/libisoburn.git
  track: 'release-*'
  ref: release-1.5.8-0-g5caccaac7e6920faaa937fea32600ed2fbdc2288

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- gnomeos-deps/libisofs.bst
- gnomeos-deps/libburn.bst
