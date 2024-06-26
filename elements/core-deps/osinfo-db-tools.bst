kind: meson
sources:
- kind: tar
  url: pagure_releases:libosinfo/osinfo-db-tools-1.11.0.tar.xz
  ref: 8ba6d31bb5ef07056e38879e070671afbcfec0eb41a87f9950450bbb831b0a1d
build-depends:
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- sdk/glib.bst
- sdk/json-glib.bst
- sdk/libsoup.bst
- freedesktop-sdk.bst:components/libarchive.bst
- freedesktop-sdk.bst:components/libxml2.bst
- freedesktop-sdk.bst:bootstrap-import.bst
variables:
  local_flags: >-
    -Wno-error=incompatible-pointer-types
