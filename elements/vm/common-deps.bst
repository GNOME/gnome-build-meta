kind: stack

runtime-depends:
- core.bst
- core/systemd-presets.bst
- sdk-platform.bst

- vm/dev-repo-script.bst
- vm/flathub-config.bst
- vm/ostree-config.bst
- vm/plymouth-gnome-theme.bst
- vm/resize-root.bst
- vm/spice-vdagent.bst
- vm/wpa-supplicant-config.bst

- freedesktop-sdk.bst:vm/config/pulseaudio.bst
- freedesktop-sdk.bst:vm/config/sudo.bst
- freedesktop-sdk.bst:vm/config/journald.bst
- freedesktop-sdk.bst:vm/config/useradd-ostree.bst
- freedesktop-sdk.bst:vm/mesa-default.bst
- freedesktop-sdk.bst:components/gamemode.bst
- freedesktop-sdk.bst:components/ccid.bst
- freedesktop-sdk.bst:components/linux-firmware.bst
- freedesktop-sdk.bst:components/man-db.bst
- freedesktop-sdk.bst:components/man-pages-posix.bst
- freedesktop-sdk.bst:components/man-pages.bst
- freedesktop-sdk.bst:components/openssh-systemd.bst
- freedesktop-sdk.bst:components/wireless-regdb-bin.bst
