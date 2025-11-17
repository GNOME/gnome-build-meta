kind: compose

build-depends:
- oci/layers/toolbox-stack.bst
- oci/cleanup-debug.bst

config:
  exclude:
  - extra
  - static-blocklist
