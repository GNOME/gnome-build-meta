kind: autotools

sources:
- kind: anitya
  project-id: 1530
  url: dbmx:kyotocabinet/pkg/kyotocabinet-{version}.tar.gz
  ref:
    version: 1.2.80
    sha256sum: 4c85d736668d82920bfdbdb92ac3d66b7db1108f09581a769dd9160a02def349
- kind: patch_queue
  path: patches/kyotocabinet

build-depends:
- (@): include/gcc-for-recc.yml
- buildsystems/autotools.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  autogen: >-
    autoreconf -fvi
