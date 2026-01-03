kind: compose

build-depends:
- gnomeos/initramfs/deps.bst
- gnomeos/initramfs/initial-scripts.bst

config:
  exclude:
  - debug
  - devel
  - doc
