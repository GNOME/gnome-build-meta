kind: compose

build-depends:
- vm/deps-devel.bst
- vm/initramfs.bst
- vm/cleanup-debug.bst
- vm/manifest-devel.bst

config:
  exclude:
  - webkit-debug
  - source
