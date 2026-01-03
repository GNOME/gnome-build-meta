kind: compose
description: An image suitable for use as mkosi's tools tree

build-depends:
- mkosi/tools-deps.bst

config:
  exclude:
  - debug
  - doc
