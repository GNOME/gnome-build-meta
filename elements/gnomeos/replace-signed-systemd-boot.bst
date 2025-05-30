kind: manual

build-depends:
- freedesktop-sdk.bst:components/sbsigntools.bst
- freedesktop-sdk.bst:components/systemd.bst

variables:
  (?):
  - arch == 'i686':
      efi-arch: ia32
  - arch == 'x86_64':
      efi-arch: x64
  - arch == 'aarch64':
      efi-arch: aa64
  - arch == 'riscv64':
      efi-arch: riscv64
  strip-binaries: ''

config:
  build-commands:
  - sbsign --key VENDOR.key --cert VENDOR.crt --output "systemd-boot%{efi-arch}.efi" "%{indep-libdir}/systemd/boot/efi/systemd-boot%{efi-arch}.efi"

  install-commands:
  - install -Dm644 -t "%{install-root}%{indep-libdir}/systemd/boot/efi" "systemd-boot%{efi-arch}.efi"

public:
  bst:
    overlap-whitelist:
    - "%{indep-libdir}/systemd/boot/efi/systemd-boot%{efi-arch}.efi"

sources:
- kind: local
  path: files/boot-keys/VENDOR.key
- kind: local
  path: files/boot-keys/VENDOR.crt
