kind: compose

build-depends:
- oci/layers/gnomeos-devel-stack.bst
- oci/cleanup-debug.bst

config:
  exclude:
  - locale
  - extra
  - static-blocklist
