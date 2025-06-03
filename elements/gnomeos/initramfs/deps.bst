kind: stack

depends:
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
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
- gnomeos-deps/plymouth-gnome-theme.bst
- gnomeos-deps/udev-hide-usr.bst
- gnomeos-deps/zram-generator.bst
- gnomeos/initramfs/signed-modules.bst
- gnomeos-deps/efitools-maybe.bst
- gnomeos-deps/shim-maybe.bst
- gnomeos/reload-sysext.bst
- gnomeos/os-release-user.bst
- gnomeos/replace-signed-systemd-boot.bst
- gnomeos/live.bst

(?):
- arch in ["x86_64"]:
    depends:
      (>):
      - gnomeos-deps/intel-ucode.bst
      - gnomeos/initramfs/signed-nvidia-modules.bst
