kind: autotools
sources:
- kind: tar
  url: https://mirrors.edge.kernel.org/pub/linux/utils/kernel/kmod/kmod-25.tar.xz
depends:
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  conf-aux: build-aux
