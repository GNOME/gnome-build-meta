kind: script

build-depends:
- iso/initramfs/deps.bst
- iso/initramfs/initial-scripts.bst
- freedesktop-sdk.bst:vm/prepare-image.bst

variables:
  uuidnamespace: aea54278-2587-4075-ae67-8688ace4ce3d
  install-root: /boot

  efi-arch: "%{arch}"
  (?):
  - arch == "x86_64":
      efi-arch: x64
  - arch == "i686":
      efi-arch: ia32

config:
  layout:
  - element: ''
    destination: '/tmp'
  - element: ''
    destination: '/var/tmp'
  - element: ''
    destination: '/boot'
  - element: iso/initramfs/deps.bst
    destination: '/'
  - element: iso/initramfs/initial-scripts.bst
    destination: '/'
  - element: vm/prepare-image.bst
    destination: '/'

  commands:
  - |
    prepare-image.sh \
       --seed "%{uuidnamespace}" \
       --rootsource LABEL="%{installer-volume-id}" \
       --rootfstype iso9660 \
       --noboot >/dev/null

  - |
    dracut -v --uefi \
           --uefi-stub /usr/lib/systemd/boot/efi/linux%{efi-arch}.efi.stub \
           --kernel-image "/boot/vmlinuz" \
           --no-machineid \
           --kver "$(ls -1 /usr/lib/modules | head -n1)" \
           --kernel-cmdline 'rw quiet splash root=live:LABEL=%{installer-volume-id}' \
           --add dmsquash-live \
           --add plymouth \
           --install grep \
           --install head \
           --install tail \
           --install less \
           --install lsof \
           --omit lvm


  - dbus-uuidgen >/etc/machine-id
  - SYSTEMD_RELAX_ESP_CHECKS=1 bootctl --path='/boot' --no-variables install
  - rm /etc/machine-id

  - |
    cat <<EOF >/boot/loader/loader.conf
    timeout 3
    editor yes
    console-mode keep
    default *
    EOF

  - |
    rm -f /boot/vmlinuz
    rm -f /boot/System.map

