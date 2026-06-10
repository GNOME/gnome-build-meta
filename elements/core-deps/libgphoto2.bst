kind: autotools
sources:
- kind: git_repo
  url: github:gphoto/libgphoto2.git
  track: 'v*.*.*'
  ref: v2.5.34-0-ga4ec9cc8b799d3e620c89feeaeb3ec86f362a12f
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
