kind: manual

sources:
- kind: local
  path: files/boot-keys/tpm2-pcr-public.pem
- kind: local
  path: files/boot-keys/fstab-tpm2-pcr-public.pem

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  strip-binaries: ''

config:
  install-commands:
  - |
    install -Dm644 tpm2-pcr-public.pem "%{install-root}%{datadir}/gnomeos/initrd-key.pem"
  - |
    install -Dm644 fstab-tpm2-pcr-public.pem "%{install-root}%{datadir}/gnomeos/fstab-key.pem"
