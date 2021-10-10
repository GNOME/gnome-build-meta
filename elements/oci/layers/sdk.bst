kind: compose

build-depends:
- oci/layers/sdk-stack.bst

config:
  exclude:
  - debug
  - locale
  - extra
  - static-blocklist
  - vm-only
