kind: manual

build-depends:
- freedesktop-sdk.bst:components/sbsigntools.bst
- core-deps/fwupd-efi.bst

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  (?):
  - arch == 'x86_64':
      efi-arch: x64
  - arch == 'aarch64':
      efi-arch: aa64
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
