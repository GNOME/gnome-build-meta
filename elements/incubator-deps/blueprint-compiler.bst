kind: meson

sources:
- kind: git_repo
  url: gnome_gitlab:jwestman/blueprint-compiler.git
  track: main
  ref: v0.12.0-23-gd0659a43c206f8237d8ad18a43a19300cb0d01ff

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/pygobject.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
