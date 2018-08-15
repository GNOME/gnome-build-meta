depends:
- core-deps/blockdev.bst
- core-deps/libatasmart.bst
- core-deps/libgudev.bst
- core-deps/polkit.bst
- filename: base.bst
  junction: freedesktop-sdk.bst
kind: autotools
sources:
- kind: tar
  ref: 512da29063de1cd4ecbfd9182d4faea0aff40835eaac69bc9f08e20ec56d16fe
  url: github_com:storaged-project/udisks/releases/download/udisks-2.7.6/udisks-2.7.6.tar.bz2
variables:
  conf-aux: build-aux
