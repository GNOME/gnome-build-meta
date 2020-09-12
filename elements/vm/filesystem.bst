kind: compose

build-depends:
- vm/deps.bst
- vm/initramfs.bst
- vm/manifest.bst

config:
  exclude:
  - devel
  - debug
