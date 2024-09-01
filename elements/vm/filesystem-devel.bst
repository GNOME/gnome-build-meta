kind: compose

build-depends:
- vm/deps-devel.bst
- vm/initramfs.bst
- vm-deps/cleanup-debug.bst
- vm/manifest-devel.bst

config:
  exclude:
  - webkit-debug
  - source
