kind: meson
sources:
- kind: git_repo
  url: gnome:pyatspi2.git
  track: master
  ref: 2.58.2-0-gf2fb289a9d2e4dac65fca8db0f4d3d65607a0cf2
build-depends:
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/at-spi2-core.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
