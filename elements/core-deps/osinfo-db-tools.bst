kind: meson
sources:
- kind: tar
  url: pagure_releases:libosinfo/osinfo-db-tools-1.12.0.tar.xz
  ref: f3315f675d18770f25dea8ed04b20b8fc80efb00f60c37ee5e815f9c3776e7f3
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
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
variables:
  local_flags: >-
    -Wno-error=incompatible-pointer-types
