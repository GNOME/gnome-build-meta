kind: autotools
sources:
- kind: tar
  url: dbmx:kyotocabinet/pkg/kyotocabinet-1.2.80.tar.gz
  ref: 4c85d736668d82920bfdbdb92ac3d66b7db1108f09581a769dd9160a02def349
- kind: patch_queue
  path: patches/kyotocabinet
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
variables:
  autogen: >-
    autoreconf -fvi
