kind: stack

depends:
- vm-deps/deps.bst

- vm-secure/repart-config.bst
- vm-secure/initramfs/signed-modules.bst
- vm-secure/sysupdate-config.bst
- vm-secure/sysupdate-apparmor-config.bst
- vm-secure/sysupdate-debug-config.bst
- vm-secure/sysupdate-devel-config.bst
- vm-secure/sysupdate-snapd-config.bst
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

(?):
- arch in ["x86_64"]:
    depends:
      (>):
      - vm-secure/sysupdate-nvidia-config.bst
