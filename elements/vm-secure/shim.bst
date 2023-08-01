kind: make

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
    ESPROOTDIR=boot/
    VENDOR_CERT_FILE=boot-keys/VENDOR.cer

  make: make %{make-args}
  make-install: make -j1 install %{make-args} DESTDIR='%{install-root}'

config:
  configure-commands:
  - |
    openssl x509 -inform PEM -outform DER -in "boot-keys/VENDOR.crt" -out "boot-keys/VENDOR.cer"

sources:
- kind: git_tag
  url: github:rhboot/shim.git
  track: 15.5
  ref: 15.5-0-gf2c598bb2218da966872ba3e0c6e7e830dca6ef0
  submodules:
    gnu-efi:
      url: github:rhboot/gnu-efi.git
      checkout: True
- kind: local
  path: files/boot-keys/VENDOR.crt
  directory: boot-keys
