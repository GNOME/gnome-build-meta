kind: stack

depends:
- iso/eos-installer-extra.bst
- iso/installer-dirs.bst
- iso/public-key.bst

- core-deps/plymouth.bst
- vm/plymouth-gnome-theme.bst

- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/linux.bst
- freedesktop-sdk.bst:components/linux-firmware.bst
- freedesktop-sdk.bst:components/shadow.bst
- freedesktop-sdk.bst:vm/mesa-default.bst
- freedesktop-sdk.bst:vm/config/journald.bst

- vm/spice-vdagent.bst

- vm/os-release-user.bst
