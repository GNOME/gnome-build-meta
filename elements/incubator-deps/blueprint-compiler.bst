kind: meson

sources:
- kind: git_repo
  url: gnome_gitlab:jwestman/blueprint-compiler.git
  track: main
  ref: v0.16.0-1-g404ae767870b6da6005f2f4aaa878deed82829e5

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/pygobject.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
