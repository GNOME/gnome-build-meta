kind: compose

build-depends:
- boards/sg2042-firmware/dtb.bst
- boards/sg2042-firmware/edk2-sg2042.bst
- boards/sg2042-firmware/fip.bst
- boards/sg2042-firmware/opensbi.bst
- boards/sg2042-firmware/zsbl.bst
- boards/sg2042-firmware/zsbl-config.bst

config:
  exclude:
  - debug
