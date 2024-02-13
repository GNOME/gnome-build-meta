kind: autotools

sources:
- kind: git_repo
  url: github:vcrhonek/hwdata.git
  track: "*.*"
  ref: v0.379-0-g87db4fd0620270614f5079c5f73b1fb6000ca081

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
