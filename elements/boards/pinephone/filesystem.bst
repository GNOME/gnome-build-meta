kind: compose

build-depends:
- boards/pinephone/deps.bst
- boards/pinephone/initramfs.bst

config:
  exclude:
  - devel
  - debug
