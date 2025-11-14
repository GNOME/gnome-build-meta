kind: autotools

sources:
- kind: git_repo
  url: lovelyhq:libburnia/libisoburn.git
  track: 'release-*'
  ref: release-1.5.6-0-g919c82385bfe24944f8bfa3865496a8f1d265570

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- gnomeos-deps/libisofs.bst
- gnomeos-deps/libburn.bst
