kind: manual

build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst

config:
  build-commands:
  - |
    touch initrd.img

  - |
    cat <<EOF >conf.ini
    [sophgo-config]

    [devicetree]
    name = mango-milkv-pioneer.dtb

    [kernel]
    name = SG2042.fd

    [eof]
    EOF

  install-commands:
  - |
    install -Dm644 -t "%{install-root}/riscv64" initrd.img conf.ini
