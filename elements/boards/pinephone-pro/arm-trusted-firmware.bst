kind: manual

sources:
- kind: git_tag
  url: github:ARM-software/arm-trusted-firmware.git
  track: 22d12c4148c373932a7a81e5d1c59a767e143ac2
  track-tags: false
- kind: patch
  path: files/arm-trusted-firmware/0002-fix-rockchip-rk3399-fix-dram-section-placement.patch

build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst
# This is required because at part of the firmware has to be built for
# armv7. freedesktop-sdk.bst:cross-compilers/gcc-arm.bst does not
# seem to be able to compile like needed.
- boards/common/arm-none-eabi-gcc.bst

variables:
  board: pinephone-pro-rk3399

environment:
  CFLAGS: '-fno-stack-protector'
  LDFLAGS: ''

config:
  build-commands:
  - make PLAT=rk3399

  install-commands:
  - install -Dm644 -t "%{install-root}%{indep-libdir}/u-boot/%{board}" build/rk3399/release/bl31/bl31.elf
