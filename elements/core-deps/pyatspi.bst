kind: meson
sources:
- kind: git_repo
  url: gnome:pyatspi2.git
  track: master
  ref: 2.58.1-0-g25badea274e4891a93e5c4255370e28fd7d4f7fd
build-depends:
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/at-spi2-core.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
