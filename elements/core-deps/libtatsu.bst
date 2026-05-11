kind: autotools

sources:
- kind: git_repo
  url: github:libimobiledevice/libtatsu.git
  track: '*.*.*'
  ref: 1.0.5-0-g42329cb756682535c7c0f087987b78d1dd5b16c8

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
- freedesktop-sdk.bst:components/git.bst

depends:
- core-deps/libplist.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
