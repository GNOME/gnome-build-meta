kind: autotools
sources:
- kind: tar
  url: github_com:storaged-project/udisks/releases/download/udisks-2.7.6/udisks-2.7.6.tar.bz2
depends:
- core-deps/blockdev.bst
- core-deps/libatasmart.bst
- core-deps/libgudev.bst
- core-deps/polkit.bst
- filename: base/docbook-xsl.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/intltool.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
variables:
  conf-aux: build-aux
