kind: compose

build-depends:
- boards/pinephone-pro/deps.bst
- boards/pinephone-pro/initramfs.bst

config:
  exclude:
  - devel
  - debug
