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


  ref: 20354bebcc2a8448128f2348e19e155910d25122
config:
  install-commands:
  - mkdir -p  %{install-root}/boot/
  # /boot/bootcode.dat is not used in Raspberry Pi 4
  - cp -a boot/LICENCE.broadcom %{install-root}/boot/

  # https://github.com/raspberrypi/documentation/blob/master/configuration/boot_folder.md
  # Default firmware, standard GPU features
  - cp -a boot/fixup4.dat %{install-root}/boot/
  - cp -a boot/start4.elf %{install-root}/boot/

  # Extended firmware, camera driver and codec, when `start_x=1`
  - cp -a boot/fixup4x.dat %{install-root}/boot/
  - cp -a boot/start4x.elf %{install-root}/boot/

  # Cut-down firmware, no hardware blocks (codecs, 3D), when `gpu_mem=16`
  - cp -a boot/fixup4cd.dat %{install-root}/boot/
  - cp -a boot/start4cd.elf %{install-root}/boot/

  # Debug firmware
  - cp -a boot/fixup4db.dat %{install-root}/boot/
  - cp -a boot/start4db.elf %{install-root}/boot/
