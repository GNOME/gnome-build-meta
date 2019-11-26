kind: autotools
sources:
- kind: tar
  url: tarballs_needing_help:libdaemon-0.14.tar.gz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
