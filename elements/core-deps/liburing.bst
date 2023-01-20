kind: make
sources:
  - kind: tar
    url: github_files:axboe/liburing/archive/refs/tags/liburing-2.3.tar.gz
    ref: 60b367dbdc6f2b0418a6e0cd203ee0049d9d629a36706fcf91dfb9428bae23c8
build-depends:
  - freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
  - freedesktop-sdk.bst:bootstrap-import.bst
