kind: stack

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/btrfs-progs.bst
- freedesktop-sdk.bst:components/cpio.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/fuse3.bst
- freedesktop-sdk.bst:components/linux-firmware.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/shadow.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/tpm2-tss.bst
- freedesktop-sdk.bst:components/tpm2-tools.bst
- freedesktop-sdk.bst:components/tzdata.bst
- freedesktop-sdk.bst:components/util-linux.bst
- vm-deps/plymouth-gnome-theme.bst
- vm-secure/initramfs/signed-modules.bst
- vm-deps/efitools-maybe.bst
- vm-deps/shim-maybe.bst
- vm-secure/reload-sysext.bst
- vm-secure/os-release-user.bst
- vm-secure/replace-signed-systemd-boot.bst

(?):
- arch in ["x86_64"]:
    depends:
      (>):
      - vm-deps/intel-ucode.bst
      - vm-secure/initramfs/signed-nvidia-modules.bst
