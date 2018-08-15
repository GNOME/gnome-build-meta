depends:
- core-deps/json-c.bst
- core-deps/lvm2.bst
- core-deps/popt.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: autotools
sources:
- kind: tar
  ref: 2b30cd1d0dd606a53ac77b406e1d37798d4b0762fa89de6ea546201906a251bd
  url: https://www.kernel.org/pub/linux/utils/cryptsetup/v1.7/cryptsetup-1.7.5.tar.xz
