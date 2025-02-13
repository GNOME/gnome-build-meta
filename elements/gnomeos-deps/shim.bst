kind: make

sources:
- kind: git_repo
  url: github:rhboot/shim.git
  track: main
  ref: latest-release-68-gc57af36e673b34a9b24309f76f105371316c45be
- kind: git_module
  path: gnu-efi
  url: github:rhboot/gnu-efi.git
  ref: 7c8e0898b189026b9a162668bbb7395979316585
- kind: local
  path: files/boot-keys/VENDOR.crt
  directory: boot-keys

build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/git-minimal.bst
- freedesktop-sdk.bst:components/openssl.bst
- gnomeos-deps/efitools.bst

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
  gnomeos-keys-uuid: 8dd6b2b4-3dc4-4ee2-a226-635467997f0e
  notparallel: true

  make-args: >-
    DEFAULT_LOADER='\\EFI\\systemd\\systemd-boot%{efi-arch}.efi'
    EFIDIR=org.gnome.os
    ESPROOTDIR=efi/
    VENDOR_DB_FILE=boot-keys/VENDOR.esl

config:
  configure-commands:
  - |
    cert-to-efi-sig-list -g '%{gnomeos-keys-uuid}' boot-keys/VENDOR.crt boot-keys/VENDOR.esl
