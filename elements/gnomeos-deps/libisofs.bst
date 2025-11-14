kind: autotools

sources:
- kind: git_repo
  url: lovelyhq:libburnia/libisofs.git
  track: 'release-*'
  ref: release-1.5.6.pl01-0-gfa3da9b0f3ad2b1fef4873d8d9c8c64b82109abc

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
