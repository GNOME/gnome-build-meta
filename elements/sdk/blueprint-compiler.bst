kind: meson

sources:
- kind: git_repo
  url: gnome:blueprint-compiler.git
  track: main
  ref: v0.22.0-12-g71dc05b0d1e2b9007d00d63327690b5cf51c1a17

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst

depends:
- sdk/pygobject.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
