kind: compose

build-depends:
- oci/layers/sdk-stack.bst

config:
  exclude:
  - locale
  - extra
  - static-blocklist
  - vm-only
