kind: autotools

sources:
- kind: git_repo
  url: github:kyz/libmspack
  track: 'v*'
  ref: v1.11-0-g305907723a4e7ab2018e58040059ffb5e77db837

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  command-subdir: libmspack
  autogen: >-
    autoreconf -fvi
