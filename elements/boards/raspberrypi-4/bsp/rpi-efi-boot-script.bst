kind: manual

sources:
- kind: local
  path: files/boards/raspberrypi-4/boot.script

variables:
  board: rpi_4

build-depends:
- boards/raspberrypi-4/bsp/u-boot.bst

config:
  build-commands:
  - mkimage -A arm64 -O efi -T script -n "Boot EFI with DT overlays" -d boot.script boot.scr

  install-commands:
  - install -Dm644 -t "%{install-root}%{indep-libdir}/u-boot/%{board}" boot.scr
