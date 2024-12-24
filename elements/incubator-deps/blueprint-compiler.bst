kind: meson

sources:
- kind: git_repo
  url: gnome_gitlab:jwestman/blueprint-compiler.git
  track: main
  ref: v0.14.0-18-ga6d57cebecaa148a8076521746d7850fc6c872b9

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/pygobject.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
