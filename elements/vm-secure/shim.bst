kind: make

sources:
- kind: git_repo
  url: github:rhboot/shim.git
  track: 15.5
  ref: 15.5-0-gf2c598bb2218da966872ba3e0c6e7e830dca6ef0
- kind: git_module
  path: gnu-efi
  url: github:rhboot/gnu-efi.git
  ref: acc5371207f3041450e1d8ae5b24f6df3e82b152
- kind: local
  path: files/boot-keys/VENDOR.crt
  directory: boot-keys

build-depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/git-minimal.bst
- freedesktop-sdk.bst:components/openssl.bst

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

  make-args: >-
    DEFAULT_LOADER='\\EFI\\systemd\\systemd-boot%{efi-arch}.efi'
    EFIDIR=org.gnome.os
    ESPROOTDIR=efi/
    VENDOR_CERT_FILE=boot-keys/VENDOR.cer

  make: make %{make-args}
  make-install: make -j1 install %{make-args} DESTDIR='%{install-root}'

config:
  configure-commands:
  - |
    openssl x509 -inform PEM -outform DER -in "boot-keys/VENDOR.crt" -out "boot-keys/VENDOR.cer"
