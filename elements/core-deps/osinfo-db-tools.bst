kind: autotools
sources:
- kind: tar
  url: https://releases.pagure.org/libosinfo/osinfo-db-tools-1.7.0.tar.xz
  ref: 4bddbec5f407436e0b62f0d7657e866adc980709acf5321aa0d4c3eb54aea823
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
