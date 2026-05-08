kind: autotools
sources:
- kind: git_repo
  url: github:gphoto/libgphoto2.git
  track: 'v*.*.*'
  ref: v2.5.33-0-gfb8bd54bf1fbf019ea7fd262d7de98bce3a28701
build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst
depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
