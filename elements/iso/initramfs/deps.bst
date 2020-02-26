kind: stack

runtime-depends:
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/util-linux.bst
- freedesktop-sdk.bst:components/linux.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/dbus.bst
- freedesktop-sdk.bst:components/dracut.bst
- sdk/os-release.bst
- freedesktop-sdk.bst:components/shadow.bst
- freedesktop-sdk.bst:components/tzdata.bst
- freedesktop-sdk.bst:components/gzip.bst
- freedesktop-sdk.bst:components/pkg-config.bst
- core-deps/plymouth.bst
- core-deps/lvm2.bst
- iso/isomd5sum.bst
- vm/plymouth-gnome-theme.bst
- vm/linux-firmware.bst
