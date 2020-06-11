kind: stack

runtime-depends:
- freedesktop-sdk.bst:components/util-linux.bst
- freedesktop-sdk.bst:components/tzdata.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/xorg-server.bst
- freedesktop-sdk.bst:components/shadow.bst
- freedesktop-sdk.bst:components/avahi.bst
- freedesktop-sdk.bst:vm/mesa-default.bst

- vm/plymouth-gnome-theme.bst

- freedesktop-sdk.bst:vm/config/pulseaudio.bst
- freedesktop-sdk.bst:vm/config/sudo.bst
- freedesktop-sdk.bst:vm/config/journald.bst

- sdk-platform.bst
- core.bst
- core/systemd-presets.bst

- vm/pinentry.bst
- freedesktop-sdk.bst:components/ccid.bst
