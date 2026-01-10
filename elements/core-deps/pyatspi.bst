kind: meson
sources:
- kind: tar
  url: gnome_downloads:pyatspi/2.58/pyatspi-2.58.0.tar.xz
  ref: e9d290d53cc7e3066d972fd18a50ee885efb8be0aa25262f19ef7f884fea0eff
build-depends:
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/at-spi2-core.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
