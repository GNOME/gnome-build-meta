kind: meson

sources:
- kind: git_repo
  url: gnome:blueprint-compiler.git
  track: main
  ref: 0.19.0-11-g34f8114170a7e158551bfa4fa91548a3499909be

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/pygobject.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
