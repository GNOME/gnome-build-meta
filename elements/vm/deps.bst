kind: stack

runtime-depends:
- core.bst
- core/systemd-presets.bst
- sdk-platform.bst

- vm/dev-repo-script.bst
- vm/flathub-config.bst
- vm/initramfs.bst
- vm/linux-firmware.bst
- vm/ostree-config.bst
- vm/plymouth-gnome-theme.bst
- vm/resize-root.bst
- vm/spice-vdagent.bst
- vm/disable-mail.bst

- freedesktop-sdk.bst:vm/config/pulseaudio.bst
- freedesktop-sdk.bst:vm/config/sudo.bst
- freedesktop-sdk.bst:vm/config/journald.bst
- freedesktop-sdk.bst:vm/mesa-default.bst
