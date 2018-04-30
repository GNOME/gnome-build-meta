kind: autotools
sources:
- kind: tar
  # volume_key doesn't work with 2.x
  url: https://www.kernel.org/pub/linux/utils/cryptsetup/v1.7/cryptsetup-1.7.5.tar.xz
depends:
- sdk/json-c.bst
- sdk/lvm2.bst
- sdk/popt.bst
- base.bst
