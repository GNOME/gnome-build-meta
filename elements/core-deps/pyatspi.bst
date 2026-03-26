kind: meson
sources:
- kind: tar
  url: gnome_downloads:pyatspi/2.58/pyatspi-2.58.2.tar.xz
  ref: 24590e5b60fec8dfb59fcd27d2a90de7034060be318ca3f7770e0f984f1f94e2
build-depends:
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/at-spi2-core.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
