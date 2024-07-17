kind: meson

sources:
- kind: git_repo
  url: gnome_gitlab:jwestman/blueprint-compiler.git
  track: main
  ref: v0.12.0-21-gadc2be14545289778179508ac1f9797a93bc2686

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/pygobject.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
