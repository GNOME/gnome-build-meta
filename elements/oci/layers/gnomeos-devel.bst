kind: compose

build-depends:
- oci/layers/gnomeos-devel-manifest.bst
- oci/layers/gnomeos-devel-stack.bst
- oci/cleanup-debug.bst

config:
  exclude:
  - extra
  - static-blocklist
