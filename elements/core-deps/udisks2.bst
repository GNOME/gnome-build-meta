kind: autotools
sources:
- kind: tar
  url: github_com:storaged-project/udisks/releases/download/udisks-2.8.2/udisks-2.8.2.tar.bz2
  ref: 3d233bc8ddac1b84338280e912ca31b613aadd1efca68a9717f818bb3b038bb6
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/docbook-xsl.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- core-deps/blockdev.bst
- core-deps/libatasmart.bst
- core-deps/libgudev.bst
- core-deps/polkit.bst
- freedesktop-sdk.bst:bootstrap-import.bst
