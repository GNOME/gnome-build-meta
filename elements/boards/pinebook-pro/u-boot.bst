kind: manual

sources:
- kind: git_repo
  url: https://git.eno.space/pbp-uboot.git
  track: 365495a329c8e92ca4c134562d091df71b75845e
  ref: 365495a329c8e92ca4c134562d091df71b75845e

build-depends:
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/dtc.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:components/gzip.bst
- freedesktop-sdk.bst:components/bc.bst
- freedesktop-sdk.bst:components/swig.bst

- boards/common/python3-as-python2.bst

- boards/pinebook-pro/arm-trusted-firmware.bst

environment:
  BL31: "%{indep-libdir}/u-boot/%{board}/bl31.elf"

variables:
  board: pinebook_pro-rk3399

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
