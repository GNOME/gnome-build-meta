kind: stack

depends:
- vm/common-deps.bst

- vm-secure/repart-config.bst
- vm-secure/kernel-modules-only.bst
- vm-secure/sysupdate-config.bst
- vm-secure/sysupdate-apparmor-config.bst
- vm-secure/ld-config.bst
- vm-secure/preset-all.bst
- vm-secure/import-deployment-pub-key.bst
- vm-secure/os-release-user.bst
- freedesktop-sdk.bst:components/btrfs-progs.bst
- vm-secure/fwupd-efi-signed-maybe.bst
- vm-secure/replace-signed-systemd-boot.bst
- vm-deps/efitools-maybe.bst
- vm-secure/reload-sysext.bst
- vm-deps/mokutil.bst
