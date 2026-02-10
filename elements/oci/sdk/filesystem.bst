kind: compose

build-depends:
- oci/sdk/manifest.bst
- oci/sdk/stack.bst

config:
  exclude:
  - locale
  - extra
  - static-blocklist
  - vm-only
