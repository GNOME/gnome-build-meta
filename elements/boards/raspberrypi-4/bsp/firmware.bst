# Pre-compiled binaries, userspace libs & GPU/bootloader firmware

kind: manual

build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst

sources:
- kind: git_tag
  url: https://github.com/raspberrypi/firmware
  track: cb2b95d73e9f0b1ebf05e03bb1959603d982feeb
  track-tags: false

config:
  install-commands:
  - mkdir -p  %{install-root}/boot/
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
