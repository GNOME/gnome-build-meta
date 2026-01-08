kind: make

sources:
- kind: git_repo
  url: github:rhboot/shim.git
  track: '*.*'
  exclude:
  - '*-rc*'
  ref: 16.1-0-gafc49558b34548644c1cd0ad1b6526a9470182ed
- kind: git_module
  path: gnu-efi
  url: github:rhboot/gnu-efi.git
  ref: dc7fd96f23d6b582416f672844362d776d175cf4
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
