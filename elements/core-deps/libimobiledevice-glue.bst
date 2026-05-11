kind: autotools

sources:
- kind: git_repo
  url: github:libimobiledevice/libimobiledevice-glue.git
  track: '*.*.*'
  ref: 1.3.2-0-gaef2bf0f5bfe961ad83d224166462d87b1df2b00

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/git.bst

depends:
- core-deps/libplist.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
