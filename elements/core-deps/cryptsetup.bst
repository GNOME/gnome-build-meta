kind: autotools
sources:
- kind: tar
  # volume_key doesn't work with 2.x
  url: https://www.kernel.org/pub/linux/utils/cryptsetup/v1.7/cryptsetup-1.7.5.tar.xz
depends:
- core-deps/json-c.bst
- core-deps/lvm2.bst
- core-deps/popt.bst
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
