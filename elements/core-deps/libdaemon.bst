kind: autotools
sources:
- kind: tar
  url: tarballs_needing_help:libdaemon-0.14.tar.gz
  ref: fd23eb5f6f986dcc7e708307355ba3289abe03cc381fc47a80bca4a50aa6b834
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:bootstrap-import.bst
