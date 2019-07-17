kind: autotools
sources:
- kind: git_tag
  url: gitlab_com:libosinfo/osinfo-db-tools.git
  track: master
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
