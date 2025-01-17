kind: stack

depends:
- iso/eos-installer-extra.bst
- iso/installer-dirs.bst
- iso/public-key.bst

- core-deps/plymouth.bst
- gnomeos-deps/plymouth-gnome-theme.bst

- gnomeos-deps/deps.bst

- freedesktop-sdk.bst:components/wayland.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/linux.bst
- freedesktop-sdk.bst:components/linux-firmware.bst
- freedesktop-sdk.bst:components/shadow.bst
- freedesktop-sdk.bst:vm/mesa-default.bst
- freedesktop-sdk.bst:vm/config/journald.bst

- gnomeos-deps/spice-vdagent.bst

- gnomeos/os-release-user.bst
