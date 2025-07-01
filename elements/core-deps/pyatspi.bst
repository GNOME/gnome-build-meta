kind: meson
sources:
- kind: tar
  url: gnome_downloads:pyatspi/2.57/pyatspi-2.57.0.tar.xz
  ref: 1ff4710abc144df103271d1d47529e0292b10501a286226842393743f0e6232f
build-depends:
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/at-spi2-core.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
