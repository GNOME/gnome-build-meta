kind: autotools
sources:
- kind: tar
  url: https://releases.pagure.org/libosinfo/osinfo-db-tools-1.6.0.tar.gz
  ref: d0d5b1196d73a7abed051be48d0e5b4aa196aac4cdbf8ddf52f57c0c492b2574
depends:
- sdk/glib.bst
- sdk/json-glib.bst
- sdk/libsoup.bst
- filename: components/libarchive.bst
  junction: freedesktop-sdk.bst
- filename: components/libxml2.bst
  junction: freedesktop-sdk.bst
- filename: components/libxslt.bst
  junction: freedesktop-sdk.bst
- filename: components/perl-xml-parser.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
