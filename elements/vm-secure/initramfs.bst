kind: script

build-depends:
- vm-secure/initramfs/deps.bst
- vm-secure/initramfs/initial-scripts.bst
- freedesktop-sdk.bst:vm/prepare-image.bst

variables:
  sysroot-seed: 9473a621-1617-4679-87e5-031afef28359
  kcmdline: >-
    rw
    quiet splash
    mount.usrflags=ro
    mount.usrfstype=squashfs
    lockdown=confidentiality

config:
  commands:
  - mkdir -p /tmp /efi /var/tmp
  - |
    prepare-image.sh \
       --seed "%{sysroot-seed}" \
       --rootsource /dev/gpt-auto-root \
       --rootfstype btrfs \
       --rootfsopts relatime \
       --noboot >/dev/null

  - dbus-uuidgen >/etc/machine-id
  - SYSTEMD_ESP_PATH=/efi bootctl --no-variables install
  - rm /etc/machine-id

  - |
    mkdir -p "%{install-root}/usr/lib/"
    cp -r /usr/lib/modules "%{install-root}/usr/lib/"

  - |
    version="$(ls -1 /lib/modules | head -n1)"
    mkdir -p "%{install-root}/usr/lib/modules/${version}"
    dracut -v --xz --reproducible --fstab \
           --no-hostonly \
           --uefi \
           --no-machineid \
           --kver "${version}" \
           --kernel-cmdline "%{kcmdline}" \
           --libdirs '%{libdir}' \
           --libdirs '%{indep-libdir}' \
           --add gnome-os

  - |
    mkdir -p '%{install-root}/efi/loader/keys/auto'
    for key in PK KEK DB; do
      cp "%{datadir}/efitools/efi/${key}-mic.auth" "%{install-root}/efi/loader/keys/auto/${key}.auth"
    done

  - |
    mkdir -p '%{install-root}/efi/loader/keys/private'
    for key in PK KEK DB; do
      cp "%{datadir}/efitools/efi/${key}.auth" "%{install-root}/efi/loader/keys/private/${key}.auth"
    done

  - mkdir -p "%{install-root}/efi/EFI"
  - cp -rT /efi/EFI "%{install-root}/efi/EFI"

  # dracut install on /boot because /efi is not a mountpoint
  - mkdir -p "%{install-root}/efi/EFI/Linux"
  - cp /boot/EFI/Linux/linux-*.efi "%{install-root}/efi/EFI/Linux/"

  - mkdir -p "%{install-root}/efi/loader"
  - |
    cat <<EOF >%{install-root}/efi/loader/loader.conf
    timeout 3
    editor yes
    console-mode keep
    EOF

