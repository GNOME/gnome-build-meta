kind: make

sources:
- kind: git_repo
  url: github:rhboot/shim.git
  track: '*.*'
  exclude:
  - '*-rc*'
  - '16.0'
  ref: 16.1-0-gafc49558b34548644c1cd0ad1b6526a9470182ed
- kind: git_module
  path: gnu-efi
  url: github:rhboot/gnu-efi.git
  ref: dc7fd96f23d6b582416f672844362d776d175cf4
- kind: patch
  path: patches/shim/binutils_2_46.patch
- kind: local
  path: files/boot-keys/VENDOR.crt
  directory: boot-keys

build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-make.bst
- freedesktop-sdk.bst:components/git.bst
- freedesktop-sdk.bst:components/openssl.bst
- freedesktop-sdk.bst:components/sbsigntools-maybe.bst

variables:
  gnomeos-keys-uuid: 8dd6b2b4-3dc4-4ee2-a226-635467997f0e
  notparallel: true

  make-args: >-
    DEFAULT_LOADER='\\EFI\\systemd\\systemd-boot%{efi-arch}.efi'
    EFIDIR=org.gnome.os
    ESPROOTDIR=efi/
    VENDOR_DB_FILE=boot-keys/VENDOR.esl

config:
  configure-commands:
  - openssl x509 -inform PEM -in boot-keys/VENDOR.crt -outform DER -out boot-keys/VENDOR.der
  - sbsiglist --owner '%{gnomeos-keys-uuid}' --type x509 boot-keys/VENDOR.der --output boot-keys/VENDOR.esl
