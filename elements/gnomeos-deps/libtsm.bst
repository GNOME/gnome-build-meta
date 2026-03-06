kind: meson

sources:
- kind: git_repo
  url: github:kmscon/libtsm.git
  track: 'v*'
  ref: v4.4.2-0-gb052e48cc776be1cdb940be2dcc1603457c01c96

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
- freedesktop-sdk.bst:components/libxkbcommon.bst
- core-deps/libcheck.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
