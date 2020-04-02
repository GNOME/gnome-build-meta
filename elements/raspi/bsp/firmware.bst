# Pre-compiled binaries, userspace libs & GPU/bootloader firmware

kind: manual

depends:
- junction: freedesktop-sdk.bst
  filename: components/autoconf.bst
  type: build
- junction: freedesktop-sdk.bst
  filename: components/automake.bst
  type: build



sources:
- kind: git
  url: https://github.com/raspberrypi/firmware
  track: master


  ref: 69a759d39aa802f65d0cc578361ff73e9dcbedc4
config:
  install-commands:
  - mkdir -p  %{install-root}/boot/
  - cp -a boot/*.bin %{install-root}/boot/
  - cp -a boot/*.dat %{install-root}/boot/
  - cp -a boot/*.elf %{install-root}/boot/
  - cp -a boot/LICENCE.broadcom %{install-root}/boot/

