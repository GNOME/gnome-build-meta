kind: script

build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/dosfstools.bst
- freedesktop-sdk.bst:components/mtools.bst
- freedesktop-sdk.bst:components/util-linux-full.bst
- filename: boards/sg2042-firmware/firmware.bst
  config:
    location: '/firmware-fs'

config:
  commands:
  - |
    truncate --size $((30720*512)) firmware-part.img

  - |
    mkfs.vfat firmware-part.img

  - |
    mcopy -s -i firmware-part.img /firmware-fs/* ::

  - |
    truncate --size $((32768*512)) firmware.img

  - |
    fdisk firmware.img <<EOF
    o
    n
    p
    1
    2048
    32767
    t
    1
    c
    w
    EOF

  - |
    dd if=firmware-part.img of=firmware.img conv=notrunc seek=2048

  - |
    install -Dm644 -t '%{install-root}' firmware.img
