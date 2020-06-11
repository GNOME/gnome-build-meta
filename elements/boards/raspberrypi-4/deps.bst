kind: stack

runtime-depends:
- freedesktop-sdk.bst:components/util-linux.bst
- freedesktop-sdk.bst:components/tzdata.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/xorg-server.bst
- freedesktop-sdk.bst:components/shadow.bst
- freedesktop-sdk.bst:components/avahi.bst
- freedesktop-sdk.bst:vm/mesa-default.bst

- core-deps/flatpak.bst
- vm/ostree-config.bst
- core-deps/eos-updater.bst
- vm/dev-repo-script.bst
- vm/plymouth-gnome-theme.bst

- freedesktop-sdk.bst:vm/config/pulseaudio.bst
- freedesktop-sdk.bst:vm/config/sudo.bst
- freedesktop-sdk.bst:vm/config/journald.bst
- vm/flathub-config.bst

- sdk-platform.bst
- core.bst
- core/systemd-presets.bst

- boards/raspberrypi-4/initramfs.bst
- vm/resize-root.bst
- vm/eos-repartition.bst

- freedesktop-sdk.bst:components/linux-firmware.bst
- freedesktop-sdk.bst:components/wireless-regdb-bin.bst

- vm/wpa-supplicant-config.bst

- boards/raspberrypi-4/bsp/firmware.bst
- boards/raspberrypi-4/bsp/rpi-userland.bst

- vm/pinentry.bst
- freedesktop-sdk.bst:components/ccid.bst
