kind: meson
sources:
- kind: git_repo
  url: gnome:pyatspi2.git
  track: master
  ref: 2.58.0-4-gad723fb9f0e7d6cb321b6e21f20038a81ed8f5f1
build-depends:
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/at-spi2-core.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
