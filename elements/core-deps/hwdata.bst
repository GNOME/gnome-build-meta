kind: autotools

sources:
- kind: git_repo
  url: github:vcrhonek/hwdata.git
  track: 'v*'
  ref: v0.411-0-g7fc63d411377e40aab66bfbf77dce6a439c3fe87

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
