kind: stack

depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/dracut.bst
- freedesktop-sdk.bst:components/fuse3.bst
- freedesktop-sdk.bst:components/linux-firmware.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- freedesktop-sdk.bst:components/shadow.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/tpm2-tss.bst
- freedesktop-sdk.bst:components/tpm2-tools.bst
- freedesktop-sdk.bst:components/tzdata.bst
- freedesktop-sdk.bst:components/util-linux.bst
- vm/plymouth-gnome-theme.bst
- vm-secure/initramfs/signed-modules.bst
- vm-secure/efitools.bst
- vm-secure/shim.bst
- vm-secure/os-release-user.bst
- vm-secure/initramfs/dracut-config.bst
