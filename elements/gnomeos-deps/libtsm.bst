kind: meson

sources:
- kind: git_repo
  url: github:kmscon/libtsm.git
  track: 'v*'
  ref: v4.7.1-0-gef0a1a40c30d164913f413c47de5bbd8383a6daa

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- core-deps/libcheck.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
