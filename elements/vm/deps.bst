kind: stack

runtime-depends:
- sdk-platform.bst
- core.bst
- core/systemd-presets.bst

- vm/initramfs.bst
- vm/ostree-config.bst
- vm/plymouth-gnome-theme.bst
- vm/dev-repo-script.bst
- vm/spice-vdagent.bst
- vm/linux-firmware.bst
- vm/flathub-config.bst

- freedesktop-sdk.bst:components/util-linux.bst
- freedesktop-sdk.bst:components/tzdata.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/xorg-server.bst
- freedesktop-sdk.bst:components/shadow.bst

- freedesktop-sdk.bst:vm/mesa-default.bst
- freedesktop-sdk.bst:vm/config/pulseaudio.bst
- freedesktop-sdk.bst:vm/config/sudo.bst
- freedesktop-sdk.bst:vm/config/journald.bst
