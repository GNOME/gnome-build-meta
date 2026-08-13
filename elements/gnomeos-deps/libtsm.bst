kind: meson

sources:
- kind: git_repo
  url: github:kmscon/libtsm.git
  track: 'v*'
  ref: v4.7.0-0-gfacadce47638f52dfc8939b463e98f0962863aad

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- core-deps/libcheck.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
