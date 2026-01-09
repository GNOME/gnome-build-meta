kind: manual

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
- freedesktop-sdk.bst:components/cpio.bst
- freedesktop-sdk.bst:components/findutils.bst
- filename:
  - freedesktop-sdk.bst:components/linux-firmware.bst
  - gnomeos-deps/intel-ucode.bst
  strict: true

variables:
  strip-binaries: ''

config:
  build-commands:
    - |
      mkdir -p microcode/kernel/x86/microcode
      cat /usr/lib/firmware/amd-ucode/microcode_amd*.bin >microcode/kernel/x86/microcode/AuthenticAMD.bin
      cp /usr/lib/firmware/intel-ucode/GenuineIntel.bin microcode/kernel/x86/microcode/GenuineIntel.bin
      (
      cd microcode
      find . -print0 | sort -z | cpio --reproducible --null -H newc -o --quiet > ../microcode.img
      )
  install-commands:
    - |
      version="$(ls -1 /lib/modules | head -n1)"
      mkdir -p "%{install-root}/usr/lib/modules/${version}"
      cp microcode.img "%{install-root}/usr/lib/modules/${version}/microcode.img"
