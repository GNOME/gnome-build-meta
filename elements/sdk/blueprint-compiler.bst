kind: meson

sources:
- kind: git_repo
  url: gnome:blueprint-compiler.git
  track: main
  ref: v0.22.0-31-g2ff4f430cca36d7e3fd20d7c1cac3180a5d80bce

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst

depends:
- sdk/pygobject.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
