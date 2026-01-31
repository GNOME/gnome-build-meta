kind: compose

build-depends:
- oci/layers/gnomeos-manifest.bst
- oci/layers/gnomeos-stack.bst

config:
  exclude:
  - debug
  - devel
  - doc
  - extra
  - static-blocklist
