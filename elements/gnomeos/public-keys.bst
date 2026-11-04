kind: manual

sources:
- kind: local
  path: files/boot-keys/system-tpm2-pcr-public.pem

build-depends:
- freedesktop-sdk.bst:public-stacks/runtime-gnu.bst

variables:
  strip-binaries: ''

config:
  install-commands:
  - |
    install -Dm644 system-tpm2-pcr-public.pem "%{install-root}%{datadir}/gnomeos/system-key.pem"
