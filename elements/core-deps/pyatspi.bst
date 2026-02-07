kind: meson
sources:
- kind: tar
  url: gnome_downloads:pyatspi/2.58/pyatspi-2.58.1.tar.xz
  ref: 3f1f079935f926584331025c7531858deb42245c993b65121f4f4b01e6b04536
build-depends:
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/at-spi2-core.bst
- sdk/pygobject.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
