kind: manual

sources:
- kind: git
  url: gitlab:pine64-org/u-boot.git
  track: pinephone-2021-06-22
  ref: 378121422954a58bc0072b0c8965fdc7b2332e55

build-depends:
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/dtc.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:components/gzip.bst
- freedesktop-sdk.bst:components/bc.bst
- freedesktop-sdk.bst:components/swig.bst
- freedesktop-sdk.bst:components/python3-setuptools.bst
- boards/common/python3-as-python2.bst
- boards/pinephone/arm-trusted-firmware.bst

environment:
  BL31: "%{indep-libdir}/u-boot/pinephone/bl31.elf"

variables:
  board: pinephone

config:
  configure-commands:
  - make distclean
  - make "%{board}_defconfig"

  build-commands:
  - make -j$(nproc) V=1 all

  install-commands:
  - mv u-boot.img idbloader.img
  - install -Dm644 -t "%{install-root}%{indep-libdir}/u-boot/%{board}" idbloader.img
  - mv u-boot-sunxi-with-spl.fit.itb u-boot.itb      
  - install -Dm644 -t "%{install-root}%{indep-libdir}/u-boot/%{board}" u-boot.itb
