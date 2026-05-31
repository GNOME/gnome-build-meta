kind: autotools

sources:
- kind: git_repo
  url: lovelyhq:libburnia/libisofs.git
  track: 'release-*'
  ref: release-1.5.8.pl02-0-g90ef63e468f824edfcc097dd7fa70a6f33f19d8c

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
