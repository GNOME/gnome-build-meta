kind: meson

sources:
- kind: git_repo
  url: gitlab:libosinfo/osinfo-db-tools.git
  track: 'v*.*.*'
  ref: v1.12.0-0-ge5564be303bfac49cc3490bd0fada342cd65566f

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/meson.bst
- freedesktop-sdk.bst:components/libxslt.bst
- freedesktop-sdk.bst:components/perl-xml-parser.bst

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
