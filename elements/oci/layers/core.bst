kind: compose

build-depends:
- oci/layers/core-stack.bst
- vm-deps/cleanup-debug.bst

config:
  exclude:
  - locale
  - extra
  - static-blocklist
  - vm-only
