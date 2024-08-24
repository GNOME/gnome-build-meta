kind: compose

build-depends:
- sdk-platform.bst
- sdk/os-release.bst
- freedesktop-sdk.bst:vm/mesa-default.bst

config:
  exclude:
  - debug
  - devel
  - doc
  - locale
  - extra
  - vm-only
