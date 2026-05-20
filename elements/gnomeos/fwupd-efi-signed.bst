kind: manual

build-depends:
- freedesktop-sdk.bst:components/sbsigntools-maybe.bst
- core-deps/fwupd-efi.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  strip-binaries: ''

config:
  build-commands:
  - |
    sbsign --key VENDOR.key --cert VENDOR.crt --output "fwupd%{efi-arch}.efi.signed" "%{libexecdir}/fwupd/efi/fwupd%{efi-arch}.efi"

  install-commands:
  - |
    install -Dm644 -t "%{install-root}%{libexecdir}/fwupd/efi" "fwupd%{efi-arch}.efi.signed"

sources:
- kind: local
  path: files/boot-keys/VENDOR.key
- kind: local
  path: files/boot-keys/VENDOR.crt
