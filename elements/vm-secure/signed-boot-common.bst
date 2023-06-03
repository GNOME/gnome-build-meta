kind: manual

build-depends:
- vm-secure/initramfs.bst
- freedesktop-sdk.bst:components/sbsigntools.bst
- freedesktop-sdk.bst:components/util-linux.bst

variables:
  uuidnamespace: df2427db-01ec-4c99-96b1-be3edb3cd9f6
  (?):
  - arch == 'i686':
      efi-arch: ia32
  - arch == 'x86_64':
      efi-arch: x64
  - arch == 'aarch64':
      efi-arch: aa64
  - arch == 'riscv64':
      efi-arch: riscv64

config:
  install-commands:
  - |
    cp -rT /boot "%{install-root}/boot"

  - |
    rm -rf "%{install-root}/boot/EFI/Linux"

  - |
    sbsign --key VENDOR.key --cert VENDOR.crt --output "%{install-root}/boot/EFI/systemd/systemd-boot%{efi-arch}.efi" "/boot/EFI/systemd/systemd-boot%{efi-arch}.efi"

  - |
    sbsign --key DB.key --cert DB.crt --output "%{install-root}/boot/EFI/gnomeos/shim%{efi-arch}.efi" "/boot/EFI/gnomeos/shim%{efi-arch}.efi"
    sbsign --key DB.key --cert DB.crt --output "%{install-root}/boot/EFI/gnomeos/mm%{efi-arch}.efi" "/boot/EFI/gnomeos/mm%{efi-arch}.efi"
    sbsign --key DB.key --cert DB.crt --output "%{install-root}/boot/EFI/BOOT/fb%{efi-arch}.efi" "/boot/EFI/BOOT/fb%{efi-arch}.efi"
    cp "%{install-root}/boot/EFI/gnomeos/mm%{efi-arch}.efi" "%{install-root}/boot/EFI/BOOT/mm%{efi-arch}.efi"
    cp "%{install-root}/boot/EFI/gnomeos/shim%{efi-arch}.efi" "%{install-root}/boot/EFI/BOOT/BOOT$(echo "%{efi-arch}" | tr a-z A-Z).EFI"

sources:
- kind: local
  path: files/boot-keys/VENDOR.key
- kind: local
  path: files/boot-keys/VENDOR.crt
- kind: local
  path: files/boot-keys/DB.key
- kind: local
  path: files/boot-keys/DB.crt
