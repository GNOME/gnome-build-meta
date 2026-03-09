kind: script

build-depends:
- gnomeos-deps/efitools-maybe.bst
- gnomeos-deps/shim-maybe.bst
- gnomeos/replace-signed-systemd-boot.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/fakecap.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:vm/prepare-image.bst

variables:
  sysroot-seed: 9473a621-1617-4679-87e5-031afef28359

environment:
  LD_PRELOAD: /usr/libexec/fakecap/fakecap.so
  FAKECAP_DB: /fakecap

config:
  commands:
  - dbus-uuidgen >/etc/machine-id
  - SYSTEMD_ESP_PATH=/efi bootctl --no-variables install
  - rm /etc/machine-id

  - mkdir -p "%{install-root}/efi/EFI/Linux"

  - |
    case "%{arch}" in
      x86_64|aarch64)
        mkdir -p '%{install-root}/efi/loader/keys/auto'
        for key in PK KEK DB; do
          cp "%{datadir}/efitools/efi/${key}-mic.auth" "%{install-root}/efi/loader/keys/auto/${key}.auth"
        done
      ;;
    esac

  - |
    case "%{arch}" in
      x86_64|aarch64)
        mkdir -p '%{install-root}/efi/loader/keys/private'
        for key in PK KEK DB; do
          cp "%{datadir}/efitools/efi/${key}.auth" "%{install-root}/efi/loader/keys/private/${key}.auth"
        done
      ;;
    esac

  - mkdir -p "%{install-root}/efi/EFI"
  - cp -rT /efi/EFI "%{install-root}/efi/EFI"

  - mkdir -p "%{install-root}/efi/loader"
  - |
    cat <<EOF >%{install-root}/efi/loader/loader.conf
    timeout 3
    editor yes
    console-mode keep
    EOF
