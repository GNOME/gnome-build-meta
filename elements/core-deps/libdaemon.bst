kind: autotools
sources:
- kind: tar
  url: tarballs_needing_help:libdaemon-0.14.tar.gz
depends:
- filename: public-stacks/buildsystem-autotools.bst
  junction: freedesktop-sdk.bst
  type: build
- filename: bootstrap-import.bst
  junction: freedesktop-sdk.bst
