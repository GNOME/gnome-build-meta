kind: autotools

sources:
- kind: git_repo
  url: github:vcrhonek/hwdata.git
  track: 'v*'
  ref: v0.413-0-g1cf7032160ad57e2eaad36c4f23eede1edd8203b

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst
