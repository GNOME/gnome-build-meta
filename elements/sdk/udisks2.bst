kind: autotools
sources:
- kind: tar
  url: github_com:storaged-project/udisks/releases/download/udisks-2.7.6/udisks-2.7.6.tar.bz2
depends:
- sdk/blockdev.bst
- sdk/libatasmart.bst
- sdk/libgudev.bst
- sdk/polkit.bst
- base.bst
