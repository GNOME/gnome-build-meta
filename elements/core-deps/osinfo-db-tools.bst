kind: meson
sources:
- kind: tar
  url: https://releases.pagure.org/libosinfo/osinfo-db-tools-1.7.0.tar.xz
  ref: 4bddbec5f407436e0b62f0d7657e866adc980709acf5321aa0d4c3eb54aea823
build-depends:
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/json-glib.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:components/libarchive.bst
- freedesktop-sdk.bst:components/libxml2.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:bootstrap-import.bst
