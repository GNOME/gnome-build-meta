kind: compose

build-depends:
- oci/gnomeos/manifest.bst
- oci/gnomeos/stack.bst

config:
  exclude:
  - debug
  - devel
  - doc
  - extra
  - static-blocklist
