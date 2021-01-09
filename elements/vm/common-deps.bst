kind: stack

depends:
- core/meta-gnome-core-os-services.bst
- core/meta-gnome-core-shell.bst
- core/meta-gnome-core-utilities.bst
- core/systemd-presets.bst
- sdk-platform.bst

- vm/dev-repo-script.bst
- vm/flathub-config.bst
- vm/gnome-nightly-config.bst
- vm/ostree-config.bst
- vm/plymouth-gnome-theme.bst
- vm/resize-root.bst
- vm/spice-vdagent.bst
- vm/wpa-supplicant-config.bst
- vm/nsswitch-config.bst

- vm/fish.bst
- vm/nss-mdns.bst
- vm/ntfs-3g.bst
- vm/uresourced.bst
- vm/android-udev-rules.bst

- freedesktop-sdk.bst:vm/config/sudo.bst
- freedesktop-sdk.bst:vm/config/useradd-ostree.bst
- freedesktop-sdk.bst:vm/mesa-default.bst
- freedesktop-sdk.bst:components/bash-completion.bst
- freedesktop-sdk.bst:components/bash-config.bst
- freedesktop-sdk.bst:components/ccid.bst
- freedesktop-sdk.bst:components/gamemode.bst
- freedesktop-sdk.bst:components/gnupg-systemd.bst
- freedesktop-sdk.bst:components/linux-firmware.bst
- freedesktop-sdk.bst:components/man-db.bst
- freedesktop-sdk.bst:components/open-iscsi.bst
- freedesktop-sdk.bst:components/openssh-systemd.bst
- freedesktop-sdk.bst:components/steam-devices.bst
- freedesktop-sdk.bst:components/wireless-regdb-bin.bst
