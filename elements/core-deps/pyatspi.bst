kind: meson
sources:
- kind: git_repo
  url: gnome:pyatspi2.git
  track: master
  ref: 2.58.2-1-ga0df428cfe6713be5769e1a3d3ca9942b6b4645d
build-depends:
- freedesktop-sdk.bst:components/python3.bst
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
depends:
- sdk/at-spi2-core.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
