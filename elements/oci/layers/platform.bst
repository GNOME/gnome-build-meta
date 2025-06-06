kind: compose

build-depends:
- oci/layers/platform-stack.bst

config:
  exclude:
  - debug
  - devel
  - doc
  - locale
  - extra
  - vm-only
