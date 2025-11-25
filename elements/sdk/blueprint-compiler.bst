kind: meson

sources:
- kind: git_repo
  url: gnome:blueprint-compiler.git
  track: main
  ref: v0.18.0-81-ga7ec3ea81b3406215831eb042bc1d80a217ac361

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/pygobject.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
