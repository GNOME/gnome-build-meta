kind: compose

build-depends:
- vm-secure/deps-devel.bst
- vm-secure/manifest-devel.bst
- vm/cleanup-debug.bst

config:
  exclude:
  - webkit-debug
  - source
