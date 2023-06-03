kind: manual

build-depends:
- vm-secure/initramfs.bst
- freedesktop-sdk.bst:bootstrap-import.bst

config:
  install-commands:
  - |
    mkdir -p "%{install-root}/usr/lib"
    cp -rT /usr/lib/modules "%{install-root}/usr/lib/modules"
