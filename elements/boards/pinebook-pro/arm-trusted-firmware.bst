kind: manual

sources:
- kind: tar
  url: github_files:ARM-software/arm-trusted-firmware/archive/v2.6.tar.gz
  ref: 3905a6d6affa84fb629d1565a4e4bdc82812bba49a457b8249ab445eeb28011b

build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst
# This is required because at part of the firmware has to be built for
# armv7. freedesktop-sdk.bst:cross-compilers/gcc-arm.bst does not
# seem to be able to compile like needed.
- boards/common/arm-none-eabi-gcc.bst

variables:
  board: pinebook_pro-rk3399

environment:
  CFLAGS: '-fno-stack-protector'
  LDFLAGS: ''

config:
  build-commands:
  - make PLAT=rk3399

  install-commands:
  - install -Dm644 -t "%{install-root}%{indep-libdir}/u-boot/%{board}" build/rk3399/release/bl31/bl31.elf
