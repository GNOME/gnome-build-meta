kind: script

build-depends:
- vm-secure/initramfs/deps.bst
- vm-secure/initramfs/initial-scripts.bst
- freedesktop-sdk.bst:vm/prepare-image.bst

variables:
  uuidnamespace: 9473a621-1617-4679-87e5-031afef28359
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
       --seed "%{uuidnamespace}" \
       --rootsource /dev/gpt-auto-root \
       --efisource LABEL=EFI \
       --efipath /boot >/dev/null

  - dbus-uuidgen >/etc/machine-id
  - SYSTEMD_ESP_PATH=/boot bootctl --no-variables install
  - rm /etc/machine-id

  - |
    mkdir -p "%{install-root}/usr/lib/"
    cp -r /usr/lib/modules "%{install-root}/usr/lib/"

  - |
    version="$(ls -1 /lib/modules | head -n1)"
    mkdir -p "%{install-root}/usr/lib/modules/${version}"
    dracut -v --xz --reproducible --fstab \
           --uefi \
           --no-machineid \
           --kver "${version}" \
           --kernel-image /boot/vmlinuz \
           --kernel-cmdline "%{kcmdline}" \
           --libdirs '%{libdir}' \
           --libdirs '%{indep-libdir}' \
           --add gnome-os

  - mkdir -p '%{install-root}/boot/loader/keys/auto'

  - cp -r '%{datadir}/efitools/efi'/{PK,KEK,DB}.auth '%{install-root}/boot/loader/keys/auto'

  - |
    cat <<EOF >%{install-root}/boot/loader/loader.conf
    timeout 3
    editor yes
    console-mode keep
    EOF

  - mkdir -p "%{install-root}/boot/EFI"
  - cp -rT /boot/EFI "%{install-root}/boot/EFI"
  - mkdir -p "%{install-root}/boot/loader"
