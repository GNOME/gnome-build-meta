kind: script

build-depends:
- freedesktop-sdk.bst:components/linux.bst
- boards/fp5/mkbootimg.bst
- boards/fp5/u-boot.bst

config:
  commands:
  - |
    mkbootimg --pagesize 4096 --header_version 2 \
        --kernel_offset 0x00008000 --kernel '%{datadir}/u-boot/qcm6490/u-boot-nodtb.bin.gz' \
        --dtb_offset 0x01f00000 --dtb /boot/dtbs/qcom/qcm6490-fairphone-fp5.dtb \
        --output '%{install-root}/boot.img'
