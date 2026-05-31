kind: autotools

sources:
- kind: git_repo
  url: lovelyhq:libburnia/libisoburn.git
  track: 'release-*'
  ref: release-1.5.8.pl02-0-gf233f77ec060ec24fce53d8a6ed66cd1f83dbfae

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- gnomeos-deps/libisofs.bst
- gnomeos-deps/libburn.bst
