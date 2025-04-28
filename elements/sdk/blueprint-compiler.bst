kind: meson

sources:
- kind: git_repo
  url: gnome:blueprint-compiler.git
  track: main
  ref: v0.16.0-12-ga12d3f5c81ee231f8bdb87cb06cf8afe5e35f4ad

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/pygobject.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
