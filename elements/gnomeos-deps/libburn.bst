kind: autotools

sources:
- kind: git_repo
  url: lovelyhq:libburnia/libburn.git
  track: 'release-*'
  ref: release-1.5.6-0-g4628231cece66949e08b2f1c1ee2ac9d8797814f

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  local_flags: -Wno-error=incompatible-pointer-types
