kind: manual

sources:
- kind: git_tag
  url: https://git.eno.space/pbp-uboot.git
  track: 3d483332e184deeb44a58c272cc347899ef413fe

build-depends:
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:components/gzip.bst
- freedesktop-sdk.bst:components/bc.bst

- boards/pinebook-pro/swig.bst
- boards/pinebook-pro/python3-as-python2.bst
- boards/pinebook-pro/dtc.bst
- boards/pinebook-pro/arm-trusted-firmware.bst

environment:
  BL31: "%{indep-libdir}/u-boot/%{board}/bl31.elf"

variables:
  board: pinebook_pro-rk3399

config:
  configure-commands:
  - make "%{board}_defconfig"

  build-commands:
  - make V=1 all

  install-commands:
  - install -Dm644 -t "%{install-root}%{indep-libdir}/u-boot/%{board}" idbloader.img
  - install -Dm644 -t "%{install-root}%{indep-libdir}/u-boot/%{board}" u-boot.itb
