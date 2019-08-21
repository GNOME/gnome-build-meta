kind: autotools
sources:
- kind: tar
  url: https://releases.pagure.org/libosinfo/osinfo-db-tools-1.6.0.tar.gz
- kind: patch
  path: files/osinfo-db-tools/0001-build-Use-a-minimum-gettext-requirement-rather-than-.patch
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
