kind: compose

build-depends:
- oci/gnomeos-devel/manifest.bst
- oci/gnomeos-devel/stack.bst
- oci/integration/cleanup-debug.bst

config:
  exclude:
  - extra
  - static-blocklist
