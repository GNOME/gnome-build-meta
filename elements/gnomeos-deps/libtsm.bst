kind: meson

sources:
- kind: git_repo
  url: github:kmscon/libtsm.git
  track: 'v*'
  ref: v4.5.0-0-g556373437d1c5f57f4dfc7c6cc1330e5088a4174

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- core-deps/libcheck.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
