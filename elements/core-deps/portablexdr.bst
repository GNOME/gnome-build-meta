kind: autotools
sources:
- kind: tar
  url: tarballs_needing_help:portablexdr-4.9.1.tar.gz
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
