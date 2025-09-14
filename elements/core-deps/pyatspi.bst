kind: meson
sources:
- kind: git_repo
  url: gnome:pyatspi2.git
  track: master
  ref: 2.58.0-0-gaae4aafb706763f542515666dc2ba4b2cb04b6c5
build-depends:
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/at-spi2-core.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
