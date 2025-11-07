kind: stack

depends:
- oci/os-release.bst
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
    # It doesn't exist but it will get created
    # by the 10-booc.conf tmpfiles
    - ln -s /var/home /home
    - ln -s /var/roothome /root

    - touch /etc/machine-id
