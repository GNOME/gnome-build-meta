kind: compose

build-depends:
- oci/platform/manifest.bst
- oci/platform/stack.bst

config:
  exclude:
  - debug
  - devel
  - doc
  - locale
  - extra
  - vm-only
