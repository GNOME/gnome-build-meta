kind: autotools
sources:
- kind: tar
  url: github_com:storaged-project/udisks/releases/download/udisks-2.8.2/udisks-2.8.2.tar.bz2
  ref: 3d233bc8ddac1b84338280e912ca31b613aadd1efca68a9717f818bb3b038bb6
depends:
- core-deps/blockdev.bst
- core-deps/libatasmart.bst
- core-deps/libgudev.bst
- core-deps/polkit.bst
- filename: sdk/gtk-doc.bst
  type: build
- filename: components/docbook-xsl.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
variables:
  conf-aux: build-aux
