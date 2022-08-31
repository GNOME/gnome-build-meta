kind: manual

sources:
- kind: git
  url: github:u-boot/u-boot.git
  track: v2022.07
  ref: 127ba75b48ab4ba0388c65b08251213d343c8d9c

- kind: patch
  path: files/u-boot/add-initial-pinephone-pro-support.patch


build-depends:
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/dtc.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:components/gzip.bst
- freedesktop-sdk.bst:components/bc.bst
- freedesktop-sdk.bst:components/swig.bst
- freedesktop-sdk.bst:components/python3-setuptools.bst
- boards/common/python3-as-python2.bst
- boards/pinephone-pro/arm-trusted-firmware.bst

environment:
  BL31: "%{indep-libdir}/u-boot/%{board}/bl31.elf"

variables:
  board: pinephone-pro-rk3399

config:
  configure-commands:
  - make distclean
  - make "%{board}_defconfig"

  build-commands:
  - make -j$(nproc) V=1 all

  install-commands:
  - install -Dm644 -t "%{install-root}%{indep-libdir}/u-boot/%{board}" idbloader.img      
  - install -Dm644 -t "%{install-root}%{indep-libdir}/u-boot/%{board}" u-boot.itb
