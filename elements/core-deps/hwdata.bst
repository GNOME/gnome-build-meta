kind: autotools

sources:
- kind: git_repo
  url: github:vcrhonek/hwdata.git
  track: 'v*'
  ref: v0.412-0-g816a9490ffcdad1929e0e53f79c500e1aeadd492

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst
