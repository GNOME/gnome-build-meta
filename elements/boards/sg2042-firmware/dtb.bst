kind: manual

build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/linux.bst

config:
  install-commands:
  - |
    install -Dm644 -t '%{install-root}/riscv64' /boot/dtbs/sophgo/mango-milkv-pioneer.dtb
    #sg2042-milkv-pioneer.dtb
