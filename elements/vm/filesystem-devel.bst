kind: compose

build-depends:
- vm/deps-devel.bst
- vm/initramfs.bst
- vm/manifest-devel.bst

config:
  exclude:
  - debug
