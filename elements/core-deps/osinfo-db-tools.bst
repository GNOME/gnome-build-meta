kind: meson
sources:
- kind: tar
  url: https://releases.pagure.org/libosinfo/osinfo-db-tools-1.9.0.tar.xz
  ref: 255f1c878bacec70c3020ff5a9cb0f6bd861ca0009f24608df5ef6f62d5243c0
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
