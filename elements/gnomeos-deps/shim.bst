kind: make

sources:
- kind: git_repo
  url: github:rhboot/shim.git
  # Shim 16.0 broke systemd stub
  # https://lists.freedesktop.org/archives/systemd-devel/2025-March/051297.html
  track: '15.*'
  exclude:
  - '*-rc*'
  ref: 15.8-0-g5914984a1ffeab841f482c791426d7ca9935a5e6
- kind: git_module
  path: gnu-efi
  url: github:rhboot/gnu-efi.git
  ref: 328951d3dcb5ff97f5a7c7a362b006626fada000
- kind: local
  path: files/boot-keys/VENDOR.crt
  directory: boot-keys

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst
- freedesktop-sdk.bst:components/git-minimal.bst
- freedesktop-sdk.bst:components/openssl.bst
- gnomeos-deps/efitools.bst

variables:
  (?):
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
