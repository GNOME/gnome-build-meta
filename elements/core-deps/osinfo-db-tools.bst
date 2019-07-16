kind: autotools
sources:
- kind: tar
  url: https://releases.pagure.org/libosinfo/osinfo-db-tools-1.6.0.tar.gz
depends:
- sdk/glib.bst
- sdk/json-glib.bst
- filename: base/intltool.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/perl-xml-parser.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: base-platform.bst
  junction: freedesktop-sdk.bst
