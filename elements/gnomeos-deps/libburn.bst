kind: autotools

sources:
- kind: git_repo
  url: lovelyhq:libburnia/libburn.git
  track: 'release-*'
  ref: release-1.5.8-0-gede593bbf4f30cdb9f7adb21fa193487e5f9337f

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  local_flags: -Wno-error=incompatible-pointer-types
