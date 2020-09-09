kind: manual

sources:
- kind: tar
  url: https://github.com/ARM-software/arm-trusted-firmware/archive/v2.3.tar.gz
  ref: 304d372327d6ecabf89da67e2e1a7b2660f13b5851886fef1b58ae5a6d74e606

build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst
# This is required because at part of the firmware has to be built for
# armv7. freedesktop-sdk.bst:cross-compilers/gcc-arm.bst does not
# seem to be able to compile like needed.
- boards/common/arm-none-eabi-gcc.bst

variables:
  board: rock64-rk3328

environment:
  CFLAGS: '-fno-stack-protector'
  LDFLAGS: ''

config:
  build-commands:
  - make PLAT=rk3328

  install-commands:
  - install -Dm644 -t "%{install-root}%{indep-libdir}/u-boot/%{board}" build/rk3328/release/bl31/bl31.elf
