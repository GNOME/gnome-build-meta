kind: autotools

sources:
- kind: git_repo
  url: github:libimobiledevice/libtatsu.git
  track: '*.*.*'
  ref: 1.1.1-0-g726b6fa32fc86d56c9022b260df2de525a444aea

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst
- freedesktop-sdk.bst:components/git.bst

depends:
- core-deps/libplist.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
