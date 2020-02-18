kind: autotools
sources:
- kind: tar
  # volume_key doesn't work with 2.x
  url: https://www.kernel.org/pub/linux/utils/cryptsetup/v1.7/cryptsetup-1.7.5.tar.xz
  ref: 2b30cd1d0dd606a53ac77b406e1d37798d4b0762fa89de6ea546201906a251bd
depends:
- core-deps/json-c.bst
- core-deps/lvm2.bst
- filename: components/libgcrypt.bst
  junction: freedesktop-sdk.bst
- filename: components/util-linux.bst
  junction: freedesktop-sdk.bst
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
