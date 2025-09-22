kind: manual

build-depends:
- gnomeos/initramfs.bst
- freedesktop-sdk.bst:components/sbsigntools.bst
- freedesktop-sdk.bst:components/util-linux.bst

variables:
  strip-binaries: ''
  (?):
  - arch == 'x86_64':
      efi-arch: x64
  - arch == 'aarch64':
      efi-arch: aa64
  - arch == 'riscv64':
      efi-arch: riscv64

config:
  install-commands:
  - |
    cp -rT /efi "%{install-root}/efi"

  - |
    rm -rf "%{install-root}/efi/EFI/Linux"

  - |
    install -Dm644 "/efi/EFI/systemd/systemd-boot%{efi-arch}.efi" "%{install-root}/efi/EFI/systemd/systemd-boot%{efi-arch}.efi"

  - |
    case '%{arch}' in
      x86_64|aarch64)
        sbsign --key DB.key --cert DB.crt --output "%{install-root}/efi/EFI/org.gnome.os/shim%{efi-arch}.efi" "/efi/EFI/org.gnome.os/shim%{efi-arch}.efi"
        sbsign --key DB.key --cert DB.crt --output "%{install-root}/efi/EFI/org.gnome.os/mm%{efi-arch}.efi" "/efi/EFI/org.gnome.os/mm%{efi-arch}.efi"
        sbsign --key DB.key --cert DB.crt --output "%{install-root}/efi/EFI/BOOT/fb%{efi-arch}.efi" "/efi/EFI/BOOT/fb%{efi-arch}.efi"
        cp "%{install-root}/efi/EFI/org.gnome.os/mm%{efi-arch}.efi" "%{install-root}/efi/EFI/BOOT/mm%{efi-arch}.efi"
        cp "%{install-root}/efi/EFI/org.gnome.os/shim%{efi-arch}.efi" "%{install-root}/efi/EFI/BOOT/BOOT$(echo "%{efi-arch}" | tr a-z A-Z).EFI"
        ;;
      *)
        # Verify we are in a case without shim
        ! [ -d "%{install-root}/efi/EFI/org.gnome.os ]
        ! [ -d "%{install-root}/efi/EFI/BOOT ]
        # Use systemd boot as fallback loader
        mkdir -p "%{install-root}/efi/EFI/BOOT"
        cp "%{install-root}/efi/EFI/systemd/systemd-boot%{efi-arch}.efi" "%{install-root}/efi/EFI/BOOT/BOOT$(echo "%{efi-arch}" | tr a-z A-Z).EFI"
        ;;
    esac

sources:
- kind: local
  path: files/boot-keys/DB.key
- kind: local
  path: files/boot-keys/DB.crt
