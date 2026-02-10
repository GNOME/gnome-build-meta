kind: stack

depends:
- oci/integration/os-release.bst
- gnomeos-deps/deps.bst

# OS-related config
- gnomeos/fwupd-efi-signed-maybe.bst
- gnomeos/import-deployment-pub-key.bst
- gnomeos/public-keys.bst
- gnomeos/reload-sysext.bst
- gnomeos/replace-signed-systemd-boot.bst
- gnomeos/systemd-pcrlock-workaround.bst

# Add the kernel
- freedesktop-sdk.bst:components/linux-firmware.bst
- gnomeos/initramfs/signed-modules.bst
- oci/initramfs.bst

# Currently only in -devel
- gnomeos-deps/bootc.bst

- oci/integration/bootc-config.bst
- freedesktop-sdk.bst:vm/config/useradd-ostree.bst
- freedesktop-sdk.bst:vm/config/sudo-nopasswd.bst

- oci/integration/lvm2-enable-activation.bst

public:
  bst:
    integration-commands:
    # Required for bootc to create the image
    - mkdir /boot
    - mkdir /sysroot
    - mkdir /sysroot/ostree
    # This needs to be a relative symlink
    # for some reason
    - ln -s sysroot/ostree ostree

    - rm --verbose --recursive --force /root
    # These also get created by 10-bootc.conf tmpfiles
    # but we need them to exist for the OCI image to
    # be usable as a container as well
    - mkdir /var/home
    - mkdir /var/roothome
    - mkdir /var/opt
    - mkdir /var/mnt

    - ln -s /var/home /home
    - ln -s /var/roothome /root
    - ln -s /var/opt /opt
    - ln -s /var/mnt /mnt

    - touch /etc/machine-id
