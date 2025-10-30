kind: compose

build-depends:
- oci/layers/gnomeos-stack.bst

config:
  exclude:
  - debug
  - locale
  - extra
  - static-blocklist
