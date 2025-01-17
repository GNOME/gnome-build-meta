kind: compose

build-depends:
- oci/layers/core-stack.bst
- gnomeos-deps/cleanup-debug.bst

config:
  exclude:
  - locale
  - extra
  - static-blocklist
  - vm-only
