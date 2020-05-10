kind: stack

runtime-depends:
- freedesktop-sdk.bst:components/avahi.bst
- freedesktop-sdk.bst:components/util-linux.bst
- freedesktop-sdk.bst:components/tzdata.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:components/xorg-server.bst
- freedesktop-sdk.bst:components/shadow.bst
- freedesktop-sdk.bst:vm/mesa-default.bst

- core-deps/flatpak.bst
- vm/ostree-config.bst
- core-deps/eos-updater.bst

- vm/plymouth-gnome-theme.bst
- vm/dev-repo-script.bst

- freedesktop-sdk.bst:vm/config/pulseaudio.bst
- freedesktop-sdk.bst:vm/config/sudo.bst
- freedesktop-sdk.bst:vm/config/journald.bst
- vm/flathub-config.bst

# And add GNOME core on top !
- sdk-platform.bst
- core.bst
- core/systemd-presets.bst

- boards/pinebook-pro/initramfs.bst
- boards/pinebook-pro/tweak-resize-root.bst
- vm/eos-repartition.bst

- boards/pinebook-pro/keyboard-updater.bst

- freedesktop-sdk.bst:components/linux-firmware.bst
- freedesktop-sdk.bst:components/wireless-regdb-bin.bst

- vm/wpa-supplicant-config.bst

- boards/pinebook-pro/disable-suspend.bst
