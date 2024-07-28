kind: meson

sources:
- kind: git_repo
  url: gnome_gitlab:jwestman/blueprint-compiler.git
  track: main
  ref: v0.12.0-31-gc1a82a034b20ae659d010f550e6c01ed6c547e20

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/pygobject.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:bootstrap-import.bst
