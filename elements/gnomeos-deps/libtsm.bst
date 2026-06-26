kind: meson

sources:
- kind: git_repo
  url: github:kmscon/libtsm.git
  track: 'v*'
  ref: v4.6.0-0-ge1e4d296f0963d1641456f1f778f0ac090429a3e

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- core-deps/libcheck.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
