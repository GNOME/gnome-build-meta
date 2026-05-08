kind: autotools

sources:
- kind: git_repo
  url: github:vcrhonek/hwdata.git
  track: 'v*'
  ref: v0.408-0-g4456b256a1a5b1d1c1c1a60a9f69c59f7743c522

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst
