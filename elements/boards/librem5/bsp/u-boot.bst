kind: manual

sources:
- kind: git_tag
  url: https://source.puri.sm/a-wai/uboot-imx.git
  ref: 956aa590c93977992743b41c45d3c7ee5a024915
- kind: remote
  url: https://www.nxp.com/lgfiles/NMG/MAD/YOCTO/firmware-imx-8.12.bin
  ref: 6b6747bf36ecc53e385234afdce01f69c5775adf0d6685c885281ca6e4e322ef

build-depends:
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/dtc.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:components/gzip.bst
- freedesktop-sdk.bst:components/bc.bst
- freedesktop-sdk.bst:components/swig.bst
- freedesktop-sdk.bst:components/python3.bst
- freedesktop-sdk.bst:components/python3-setuptools.bst

- boards/librem5/bsp/arm-trusted-firmware.bst

environment:
  BL31: "%{indep-libdir}/u-boot/%{board}/bl31.elf"

variables:
  board: librem5

config:
  configure-commands:
  - make "%{board}_defconfig"

  build-commands:
  - chmod +x firmware-imx-8.12.bin
  # Changing ownership doesn't work
  - sed -i 's|_unpack x|_unpack ox|g' firmware-imx-8.12.bin
  - ./firmware-imx-8.12.bin --auto-accept
  - cp -v firmware-imx-8.12/firmware/ddr/synopsys/lpddr4*.bin ./
  - cp -v firmware-imx-8.12/firmware/hdmi/cadence/signed_*imx8m.bin ./

  - make librem5_defconfig
  - make ARCH=arm

  install-commands:
  - install -Dm644 -T flash.bin "%{install-root}%{indep-libdir}/u-boot/%{board}/phone-boot.img"
