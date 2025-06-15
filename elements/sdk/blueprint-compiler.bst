kind: meson

sources:
- kind: git_repo
  url: gnome:blueprint-compiler.git
  track: main
  ref: v0.16.0-18-g6e010148b2b340876a8d1ac456819d4232c0ef93

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/pygobject.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
