kind: compose

build-depends:
- oci/layers/core-stack.bst
- oci/cleanup-debug.bst

config:
  exclude:
  - locale
  - extra
  - static-blocklist
