kind: manual

sources:
- kind: git_tag
  url: github:Kwiboo/u-boot-rockchip.git
  track: rk3568-2023.10
  ref: v2023.10-rc1-56-g94c24b378ac27dfa96d4b144efef76e15ef3432b
- kind: git_tag
  url: github:rockchip-linux/rkbin.git
  track: master
  directory: rkbin
  ref: b4558da0860ca48bf1a571dd33ccba580b9abe23

build-depends:
- freedesktop-sdk.bst:components/bison.bst
- freedesktop-sdk.bst:components/dtc.bst
- freedesktop-sdk.bst:components/flex.bst
- freedesktop-sdk.bst:components/gzip.bst
- freedesktop-sdk.bst:components/bc.bst
- freedesktop-sdk.bst:components/swig.bst

- boards/common/python3-as-python2.bst

environment:
  BL31: "rkbin/bin/rk35/rk3568_bl31_v1.42.elf"
  ROCKCHIP_TPL: "rkbin/bin/rk35/rk3566_ddr_1056MHz_v1.16.bin"

variables:
  board: pinetab2-rk3566

config:
  configure-commands:
  - make "%{board}_defconfig"

  build-commands:
  - make V=1 all

  install-commands:
  - install -Dm644 -t "%{install-root}%{indep-libdir}/u-boot/%{board}" idbloader.img
  - install -Dm644 -t "%{install-root}%{indep-libdir}/u-boot/%{board}" u-boot.itb
