kind: autotools
sources:
- kind: tar
  url: github_com:storaged-project/udisks/releases/download/udisks-2.7.6/udisks-2.7.6.tar.bz2
  ref: 512da29063de1cd4ecbfd9182d4faea0aff40835eaac69bc9f08e20ec56d16fe
  etag: '"9e0fb5766ad542af920435cc5a68a749"'
depends:
- core-deps/blockdev.bst
- core-deps/libatasmart.bst
- core-deps/libgudev.bst
- core-deps/polkit.bst
- base.bst
