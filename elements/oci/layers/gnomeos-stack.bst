kind: stack

depends:
- gnomeos-deps/deps.bst

- gnomeos/fwupd-efi-signed-maybe.bst
- gnomeos/import-deployment-pub-key.bst
- gnomeos/public-keys.bst
- gnomeos/reload-sysext.bst
- gnomeos/replace-signed-systemd-boot.bst
- gnomeos/systemd-pcrlock-workaround.bst

# Add the kernel to experiment with things
- gnomeos/initramfs.bst
- freedesktop-sdk.bst:components/linux.bst
- freedesktop-sdk.bst:components/linux-firmware.bst
# - gnomeos/signed-boot.bst
# - gnomeos/signed-boot-common.bst

# Currently only in -devel
- gnomeos-deps/bootc.bst
# Needed to repack the initramfs atm
- freedesktop-sdk.bst:components/cpio.bst

- oci/integration/extrafs.bst
- oci/os-release.bst

public:
  bst:
    integration-commands:
    # - groupadd root -r -g 0
    # - useradd root -rm -u 0 -g 0 -d /root
    - |
      cat <<EOF >>/etc/sudoers
      %wheel ALL=(ALL) NOPASSWD: ALL
      EOF

    - rm -rf /usr/local /srv /home
    - mkdir -p /var /sysroot /boot

    - ln -s /var/home /home
    - ln -s /var/roothome /root
    - ln -s /var/srv /srv
    - ln -s sysroot/ostree ostree
    - ln -s /var/usrlocal /usr/local

    - mkdir -p /media
    - touch /etc/machine-id
    - groupadd -r wheel
