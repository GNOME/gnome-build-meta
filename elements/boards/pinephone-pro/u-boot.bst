kind: manual

sources:
- kind: tar
  url: https://source.denx.de/u-boot/u-boot/-/archive/v2021.01/u-boot-v2021.01.tar.gz
- kind: patch
  path: files/u-boot/0001-rockchip-Add-initial-support-for-the-PinePhone-Pro.patch

build-depends:
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/dtc.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:components/gzip.bst
- freedesktop-sdk.bst:components/bc.bst
- freedesktop-sdk.bst:components/swig.bst

- boards/common/python3-as-python2.bst

- boards/pinephone-pro/arm-trusted-firmware.bst

environment:
  BL31: "%{indep-libdir}/u-boot/%{board}/bl31.elf"

variables:
  board: pinephone-pro-rk3399

config:
  configure-commands:
  - |
    sed -i "/YYLTYPE yylloc;/d" scripts/dtc/dtc-lexer.l

  - make "%{board}_defconfig"

  build-commands:
  - make V=1 all

  install-commands:
  - install -Dm644 -t "%{install-root}%{indep-libdir}/u-boot/%{board}" idbloader.img
  - install -Dm644 -t "%{install-root}%{indep-libdir}/u-boot/%{board}" u-boot.itb
