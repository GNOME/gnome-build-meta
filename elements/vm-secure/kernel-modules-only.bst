kind: manual

build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- filename: vm-secure/initramfs.bst
  strict: true

config:
  install-commands:
  - |
    mkdir -p "%{install-root}/usr/lib"
    cp -rT /usr/lib/modules "%{install-root}/usr/lib/modules"
