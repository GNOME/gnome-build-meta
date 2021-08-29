kind: manual

sources:
- kind: git_tag
  url: https://source.denx.de/u-boot/u-boot.git
  track: master
  track-tags: true
  ref: v2021.10-rc2-0-ga0da2dda4ed9d0aee5265e9cd8876734f9f80e09

build-depends:
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:components/gzip.bst
- freedesktop-sdk.bst:components/bc.bst
- freedesktop-sdk.bst:components/swig.bst

- boards/common/python3-as-python2.bst
- boards/common/dtc.bst

- boards/pinebook-pro/arm-trusted-firmware.bst

environment:
  BL31: "%{indep-libdir}/u-boot/%{board}/bl31.elf"

variables:
  board: pinebook-pro-rk3399

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
