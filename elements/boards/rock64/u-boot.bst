kind: manual

sources:
- kind: tar
  url: https://ftp.denx.de/pub/u-boot/u-boot-2020.04.tar.bz2
  ref: fe732aaf037d9cc3c0909bad8362af366ae964bbdac6913a34081ff4ad565372

build-depends:
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:components/gzip.bst
- freedesktop-sdk.bst:components/bc.bst

- boards/common/swig.bst
- boards/common/python3-as-python2.bst
- boards/common/dtc.bst

- boards/rock64/arm-trusted-firmware.bst

environment:
  BL31: "%{indep-libdir}/u-boot/%{board}/bl31.elf"

variables:
  board: rock64-rk3328

config:
  configure-commands:
  - make "%{board}_defconfig"

  build-commands:
  - make V=1 all

  install-commands:
  - install -Dm644 -t "%{install-root}%{indep-libdir}/u-boot/%{board}" idbloader.img
  - install -Dm644 -t "%{install-root}%{indep-libdir}/u-boot/%{board}" u-boot.itb
