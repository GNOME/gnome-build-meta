kind: compose

build-depends:
- sdk-platform.bst
- sdk/os-release.bst

config:
  exclude:
  - debug
  - devel
  - doc
  - locale
  - extra
  - vm-only
