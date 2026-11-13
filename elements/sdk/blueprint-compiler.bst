kind: meson

sources:
- kind: git_repo
  url: gnome:blueprint-compiler.git
  track: main
  ref: v0.22.0-29-gf7198c52f7238d6afd7bb7db6b3c370d07e06756

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst

depends:
- sdk/pygobject.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
