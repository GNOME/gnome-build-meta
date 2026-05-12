kind: autotools

sources:
- kind: git_repo
  url: lovelyhq:libburnia/libisofs.git
  track: 'release-*'
  ref: release-1.5.8.pl01-0-gd6db767b1db01f29005a5ecbfc4c1c46bc28db5a

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
