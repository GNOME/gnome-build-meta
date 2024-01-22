kind: stack

depends:
- vm/common-deps.bst

- vm-secure/repart-config.bst
- vm-secure/kernel-modules-only.bst
- vm-secure/sysupdate-config.bst
- vm-secure/sysupdate-apparmor-config.bst
- vm-secure/sysupdate-devel-config.bst
- vm-secure/sysupdate-snapd-config.bst
- vm-secure/systemd-sysupdate-component.bst
- vm-secure/ld-config.bst
- vm-secure/preset-all.bst
- freedesktop-sdk.bst:vm/minimal-secure/enable-sysupdate.bst
- vm-secure/import-deployment-pub-key.bst
- vm-secure/os-release-user.bst
- freedesktop-sdk.bst:components/btrfs-progs.bst
- vm-secure/fwupd-efi-signed-maybe.bst
- vm-secure/replace-signed-systemd-boot.bst
- vm-secure/efitools-maybe.bst
- vm-secure/reload-sysext.bst
- vm-secure/mokutil.bst
