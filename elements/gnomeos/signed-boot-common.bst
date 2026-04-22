kind: manual

build-depends:
- filename:
  - gnomeos/efi-keys.bst
  - gnomeos-deps/shim-maybe.bst
  - gnomeos/replace-signed-systemd-boot.bst
  strict: true
- freedesktop-sdk.bst:components/sbsigntools-maybe.bst

variables:
  strip-binaries: ''

config:
  install-commands:
  # UEFI secure boot keys
  - |
    case "%{arch}" in
      x86_64|aarch64)
        mkdir -p '%{install-root}/efi/loader/keys/auto'
        for key in PK KEK DB; do
          cp "%{datadir}/efi-keys/${key}-mic.auth" "%{install-root}/efi/loader/keys/auto/${key}.auth"
        done
      ;;
    esac

  - |
    case "%{arch}" in
      x86_64|aarch64)
        mkdir -p '%{install-root}/efi/loader/keys/private'
        for key in PK KEK DB; do
          cp "%{datadir}/efi-keys/${key}.auth" "%{install-root}/efi/loader/keys/private/${key}.auth"
        done
      ;;
    esac

  - mkdir -p %{install-root}/efi/EFI/
  - cp -rT /efi/EFI "%{install-root}/efi/EFI"

  # systemd-boot config file
  - mkdir -p "%{install-root}/efi/loader"
  - |
    cat <<EOF >%{install-root}/efi/loader/loader.conf
    timeout 3
    editor yes
    console-mode keep
    EOF

  - |
    install -Dm644 %{indep-libdir}/systemd/boot/efi/systemd-boot%{efi-arch}.efi "%{install-root}/efi/EFI/systemd/systemd-boot%{efi-arch}.efi"

  # Sign and install shim (or systemd-boot) as default bootloader
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
