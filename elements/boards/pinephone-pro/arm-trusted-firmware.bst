kind: manual

sources:
- kind: git_tag
  url: github:ARM-software/arm-trusted-firmware.git
  track: v2.7
  ref: v2.7.0-0-g35f4c7295bafeb32c8bcbdfb6a3f2e74a57e732b
  
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
  - make -j$(nproc) PLAT=rk3399 DEBUG=1 all

  install-commands:
  - install -Dm644 -t "%{install-root}%{indep-libdir}/u-boot/%{board}" build/rk3399/debug/bl31/bl31.elf

