kind: compose

build-depends:
- boards/pinebook-pro/deps.bst
- boards/pinebook-pro/initramfs.bst

config:
  exclude:
  - devel
  - debug
